function Get-M365UserReport {
	[CmdletBinding(SupportsPaging=$true)]
    param (
        [string[]]$AddProperties
    )
$RequiredScopes = 'Directory.Read.All'
Set-M365MGGraphConnectionScopes -RequiredScopes $RequiredScopes
Select-MgProfile Beta
[Array]$Users = Get-MGUser -All
$i = 1
$UserReport = [System.Collections.Generic.List[PsObject]]::new()
foreach ($user in $Users)
{
	Write-Progress -Activity "Processing User License details" -Status "Working on $($user.displayname)" -PercentComplete (($i / $Users.Count) * 100)
	$user.LicenseDetails = Get-MgUserLicenseDetail -UserId $user.id
	if ($user.UserType -eq "Member") { $user.Add('GroupMemberships', ((Get-M365MGUserPrincipalGroupMembership -UserID $user.userprincipalname).displayname -join ' , ')) }
	$SingleUserDetails = $user | Select-Object @(
		'UserPrincipalName'
		'id'
		'AccountEnabled' 
		'Mail'
		'JobTitle'
		'PasswordPolicies'
		'UserType'
		'CreatedDateTime'
		'OnPremisesSyncEnabled'
		'MobilePhone'
		'BusinessPhone'
		'OfficeLocation'
		'UsageLocation'
		'StreetAddress'
		'City'
	@{ name = "MemberOf"; Expression = { $_.additionalproperties.GroupMemberships } })

	foreach ($NewProp in $AddProperties){
		Write-Progress -Activity "Adding Additional Properties" -Status "Working on $NewProp for user $($user.displayname)"
		$SingleUserDetails | Add-Member -MemberType NoteProperty -Name $NewProp -Value ($user | Select-Object -ExpandProperty $NewProp)
	}
	$UserReport.Add($SingleUserDetails)       
	$i++
}

return $UserReport
}