function Set-M365MGGraphConnectionScopes {
    [CmdletBinding()]
param (
    [String[]]$RequiredScopes,
    [String]$GraphProfile = $beta
)
try {
$CurrentMGScopes = (Get-MgContext).scopes
}
catch [System.Management.Automation.CommandNotFoundException]{
    Connect-Graph -Scopes $RequiredScopes -ForceRefresh | Out-Null
    Select-MGProfile $GraphProfile
}
$NeededScopes = $RequiredScopes | foreach-object {
    if ($_ -notin $CurrentMGScopes){
        $_
    }
}
if ($NeededScopes.Count -gt 0){
    Import-Module Microsoft.Graph.Authentication
    Connect-MGGraph -Scopes $_ -ForceRefresh | Out-Null
    Select-MgProfile $GraphProfile
}
  Write-Host "Connected to Microsoft Graph under account $((Get-MgContext).Account)"
}