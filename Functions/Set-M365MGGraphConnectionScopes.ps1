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
    Connect-Graph -Scopes $RequiredScopes -ForceRefresh
    Select-MGProfile beta
}
$RequiredScopes | foreach-object {
    if ($_ -notin $CurrentMGScopes){
    Import-Module Microsoft.Graph.Authentication
    Connect-MGGraph -Scopes $_ -ForceRefresh
}
}
    Write-Host "Connected to Microsoft Graph under account $((Get-MgContext).Account)"
}