function Get-M365GroupReport {
    [CmdletBinding()]
param (
    [Switch]$All,
    [Switch]$DynamicOnly,
    [Switch]$UnifiedOnly,
    [Switch]$SecurityOnly,
    [Switch]$DistroOnly
)
    $groups = Get-MgGroup -All
    $SecurityGroups = $groups | Where-Object { -not $_.GroupTypes -and $_.SecurityEnabled } | Select-Object DisplayName, MailEnabled, Mail, id, @{
        name	   = 'Source'
        expression = {
            if ($_.OnPremisesSyncEnabled) { "Windows Server AD" }
            else { "Cloud" }
        }
    },@{
        name	   = "Type"
        expression = { "Security" }
    }, MembershipRule
    $UnifiedGroups = $groups | Where-Object { $_.GroupTypes -eq 'Unified' } | Select-Object DisplayName, MailEnabled, Mail, id, @{
        name	   = 'Source'
        expression = {
            if ($_.OnPremisesSyncEnabled) { "Windows Server AD" }
            else { "Cloud" }
        }
    },@{
        name	   = "Type"
        expression = { "Microsoft365" }
    }, MembershipRule
    $DynamicGroups = $groups | Where-Object { $_.GroupTypes -eq 'DynamicMembership' } | Select-Object DisplayName, MailEnabled, Mail, id, @{
        name	   = 'Source'
        expression = {
            if ($_.OnPremisesSyncEnabled) { "Windows Server AD" }
            else { "Cloud" }
        }
    },@{
        name	   = "Type"
        expression = { "Dynamic" }
    },MembershipRule
    $DistroGroups = $groups | Where-Object { -not $_.GroupTypes -and -not $_.SecurityEnabled } | Select-Object DisplayName, MailEnabled, Mail, id, @{
        name	   = 'Source'
        expression = {
            if ($_.OnPremisesSyncEnabled) { "Windows Server AD" }
            else { "Cloud" }
        }
    },@{
        name	   = "Type"
        expression = { "Distribution" }
    },MembershipRule

    if ($DynamicOnly){
        return $DynamicGroups
    }
    if ($UnifiedOnly){
        return $UnifiedGroups
    }
    if ($SecurityOnly){
        return $SecurityGroups
    }
    if ($DistroOnly){
        return $DistroGroups
    }
    else {
        $AllGroups = @(
        $SecurityGroups
        $UnifiedGroups
        $DynamicGroups
        $DistroGroups
    )    
        Return $AllGroups
    }
}