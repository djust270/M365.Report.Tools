function Get-M365TeamsUsageReport{
	[CmdletBinding()]
	param (		
		[Parameter(Mandatory)]
		[ValidateSet('D30', 'D90', 'D180')]
		$Period
	)
	# Check admin report settings
	$DisplayConcealedNames = (Get-M365AdminReportSettings).displayConcealedNames 
	if ($DisplayConcealedNames -eq $false)
	{
		Set-M365AdminReportSettings -ShowNames
	}
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
		throw $_ ; break
	}
	Remove-Item $tempfile
	if ($DisplayConcealedNames -eq $false)
	{
		Set-M365AdminReportSettings -ConcealNames
	}
	return $TeamsReport
}
