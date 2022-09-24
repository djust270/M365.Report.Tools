function Get-M365SSOEnterpriseApps 
{
$Apps = Get-MgServicePrincipal -All
$SSOApps = $Apps | Where-Object { $_.KeyCredentials.Displayname -eq "CN=Microsoft Azure Federated SSO Certificate" } | Select-Object displayname, LoginURL, Homepage, AppID, @{
	name	   = 'NotificaitonEmailaddresses'
	expression = { $_.NotificationEmailAddresses -join ' ; ' }
}, @{
	name	   = 'SSO Certificate Expiration Date';
	expression = { $_.keycredentials[0].EndDateTime.ToShortDateString() }
}
return $SSOApps
}