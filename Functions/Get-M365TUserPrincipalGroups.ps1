function Get-M365UserPrincipalGroupMembership{
param (
		[string]$UserID
	)
	$graphApiVersion = "v1.0"
	$Resource = "users/$UserID/memberOf/$/microsoft.graph.group?$select=id,displayName,securityEnabled,groupTypes,onPremisesSyncEnabled"
	$uri = "https://graph.microsoft.com/$graphApiVersion/$($Resource)"
	$groups = (Invoke-MgGraphRequest -Uri $uri -Method Get).Value
	return $groups
}
