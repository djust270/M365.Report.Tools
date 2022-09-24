function Get-M365TeamsUsageReport{
	param (
		[Parameter(Mandatory)]
		[ValidateSet('D30', 'D90', 'D180')]
		$Period
	)
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
