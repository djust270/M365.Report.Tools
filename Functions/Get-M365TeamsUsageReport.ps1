function Get-M365TeamsUsageReport{
	param (
		[Parameter(Mandatory)]
		[ValidateSet('D30', 'D90', 'D180')]
		$Period
	)
	$RequiredScopes = 'Reports.Read.All'
	Set-M365MGGraphConnectionScopes -RequiredScopes $RequiredScopes
	try
	{
		$tempfile = New-TemporaryFile
		Invoke-MgGraphRequest -Uri "/beta/reports/getTeamsTeamActivityDetail(period='$Period'`)`?`$format=text/csv" -ErrorAction Stop -OutputFilePath $tempfile
		$TeamsReport = Import-csv $tempfile		
	}
	Catch
	{
		$_ ; break
	}
	Remove-Item $tempfile
	return $TeamsReport
}
