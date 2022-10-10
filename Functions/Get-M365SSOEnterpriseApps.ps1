function Get-M365SSOEnterpriseApps 
{
[CmdletBinding()]
$Apps = Get-MgServicePrincipal -All
$SSOApps = $Apps | Where-Object { $_.KeyCredentials.Displayname -eq "CN=Microsoft Azure Federated SSO Certificate" } | Select-Object displayname, LoginURL, Homepage, AppID, @{
	name	   = 'NotificaitonEmailaddresses'
	expression = { $_.NotificationEmailAddresses -join ' ; ' }
}, @{
	name	   = 'SSO Certificate Expiration Date';
	expression = { $_.keycredentials[0].EndDateTime.ToShortDateString() }
}
	$SSOApps
	Write-Warning "Please remember to disconnect from the Microsoft Graph by using 'Disconnect-MGGraph'"
}