function Get-M365UsageReport{
	[CmdletBinding()]
	param (		
		[Parameter(Mandatory)]
		[ValidateSet('D7','D30', 'D90', 'D180')]
		$Period,
        [Parameter(Mandatory)]
		[ValidateSet(
           'TeamsTeamActivityDetail',
           'TeamsDeviceUsageUserCounts',
           'TeamsDeviceUsageTotalUserCounts',
           'TeamsDeviceUsageDistributionUserCounts',
           'TeamsDeviceUsageDistributionTotalUserCounts',
           'TeamsUserActivityUserDetail',
           'TeamsUserActivityCounts',
           'TeamsUserActivityTotalCounts',
           'TeamsUserActivityUserCounts',
           'TeamsUserActivityTotalUserCounts',
           'TeamsUserActivityDistributionUserCounts',
           'TeamsUserActivityDistributionTotalUserCounts',
           'TeamsUserActivityTotalDistributionCounts',
           'TeamsTeamActivityDetail',
           'TeamsTeamActivityCounts',
           'TeamsTeamActivityDistributionCounts',
           'EmailActivityUserDetail',
           'EmailActivityCounts',
           'EmailActivityUserCounts',
           'EmailAppUsageUserDetail',
           'EmailAppUsageAppsUserCounts',
           'EmailAppUsageUserCounts',
           'EmailAppUsageVersionsUserCounts',
           'MailboxUsageDetail',
           'MailboxUsageMailboxCounts',
           'MailboxUsageQuotaStatusMailboxCounts',
           'MailboxUsageStorage',
           'Office365ActiveUserDetail',
           'Office365ActiveUserCounts',
           'Office365ServicesUserCounts',
           'M365AppUserDetail',
           'M365AppUserCounts',
           'M365AppPlatformUserCounts',
           'BrowserUserDetail',
           'BrowserUserCounts',
           'BrowserDistributionUserCounts',
           'Office365GroupsActivityDetail',
           'Office365GroupsActivityCounts',
           'Office365GroupsActivityGroupCounts',
           'Office365GroupsActivityStorage',
           'Office365GroupsActivityFileCounts',
           'OneDriveActivityUserDetail',
           'OneDriveActivityUserCounts',
           'OneDriveActivityFileCounts',
           'OneDriveActivityUserDetail',
           'OneDriveActivityUserCounts',
           'OneDriveActivityFileCounts',
           'OneDriveUsageAccountDetail',
           'OneDriveUsageAccountCounts',
           'OneDriveUsageFileCounts',
           'OneDriveUsageStorage',
           'SharePointActivityUserDetail',
           'SharePointActivityFileCounts',
           'SharePointActivityUserCounts',
           'SharePointActivityPages',
           'SharePointSiteUsageDetail',
           'SharePointSiteUsageFileCounts',
           'SharePointSiteUsageSiteCounts',
           'SharePointSiteUsageStorage',
           'SharePointSiteUsagePages'
        )]
        [String]$ReportArea
	)
	# Check admin report settings
	$DisplayConcealedNames = (Get-M365AdminReportSettings).displayConcealedNames 
	if ($DisplayConcealedNames -eq $true)
	{
		Write-Warning "Names are currently concealed in Admin report settings."
        $prompt = Read-Host "Would you like update report settings to show names on the report? Y/N"
		if ($prompt -eq 'Y'){
        Set-M365AdminReportSettings -ShowNames
        }
	}
	$RequiredScopes = 'Reports.Read.All'
	Set-M365MGGraphConnectionScopes -RequiredScopes $RequiredScopes
	try
	{
		$getReport = 'get' + $ReportArea
        $tempfile = New-TemporaryFile
		Invoke-MgGraphRequest -Uri "/beta/reports/$getReport(period='$Period'`)`?`$format=text/csv" -ErrorAction Stop -OutputFilePath $tempfile
		$TeamsReport = Import-csv $tempfile		
	}
	Catch
	{
		throw $_ ; break
	}
	Remove-Item $tempfile	
	$TeamsReport
    Write-Warning "Please remember to disconnect from the Microsoft Graph by using 'Disconnect-MGGraph'"
}
