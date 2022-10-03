function Set-M365MGGraphConnectionScopes {
param (
    [String[]]$RequiredScopes
)
try {
$CurrentMGScopes = (Get-MgContext).scopes
}
catch [System.Management.Automation.CommandNotFoundException]{
    Connect-Graph -Scopes $RequiredScopes -ForceRefresh
}
$RequiredScopes | foreach-object {
    if ($_ -notin $CurrentMGScopes){
    Import-Module Microsoft.Graph.Authentication
    Connect-MGGraph -Scopes $_ -ForceRefresh
}
}
    Write-Host "Connected to Microsoft Graph under account $((Get-MgContext).Account)"
}