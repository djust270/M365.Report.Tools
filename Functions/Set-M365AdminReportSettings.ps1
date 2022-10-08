function Set-M365AdminReportSettings {
    [CmdletBinding()]
    param(
        [Switch]$ShowNames,
        [Switch]$ConcealNames
    )
    $RequiredScopes = 'ReportSettings.ReadWrite.All'
    Set-M365MGGraphConnectionScopes -RequiredScopes $RequiredScopes
    if ($ShowNames){
        Invoke-MGGraphRequest -Method PATCH -uri "/beta/admin/reportSettings" -body @{ "displayConcealedNames" = $false }
    }
    if ($ConcealNames) {
        Invoke-MGGraphRequest -Method PATCH -uri "/beta/admin/reportSettings" -body @{ "displayConcealedNames" = $true }
    }
}