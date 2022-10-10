@{
	
	# Script module or binary module file associated with this manifest
	RootModule = 'M365.Report.Tools.psm1'
	
	# Version number of this module.
	ModuleVersion = '1.0'
	
	# ID used to uniquely identify this module
	GUID = '3614db23-2205-42bf-bb66-2cb0ab3a4e9e'
	
	# Author of this module
	Author = 'David Just'
	
	# Company or vendor of this module
	CompanyName = ''
	
	# Copyright statement for this module
	Copyright = '(c) 2022. All rights reserved.'
	
	# Description of the functionality provided by this module
	Description = 'A PowerShell Module with tools for gathering data and creating reports on various areas of M365 services. This module is designed with ease of use. Reports can be easily exported to CSV file or Excel workbook(s).'
	
	# Minimum version of the Windows PowerShell engine required by this module
	PowerShellVersion	   = '5.1'

	# Dependancies
	RequiredModules      = @(
		'ImportExcel'
		'Microsoft.Online.Sharepoint.PowerShell'
		'Microsoft.Graph.Authentication'
		'Microsoft.Graph.Applications'
		'Microsoft.Graph.Groups'
		'Microsoft.Graph.Teams'		
		'Microsoft.Graph.Users'
		'ExchangeOnlineManagement'
	)

	# Functions to export from this module
	FunctionsToExport = @(
		'Get-M365AdminReportSettings'
		'Get-M365GroupReport'
		'Get-M365MailboxReport'
		'Get-M365MGUserPrincipalMembership'
		'Get-M365SSOEnterpriseApps'
		'Get-M365TeamsChannelReport'
		'Get-M365TeamsReport'		
		'Get-M365TenantLicenseReport'
		'Get-M365UserReport'
		'Set-M365AdminReportSettings'	
		'Get-M365UserReport'
		'Get-M365UserLicenseReport'		
		'Get-M365UsageReport'
		'Get-M365SharePointSiteSummary'	
	)
		
	# Private data to pass to the module specified in ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
	PrivateData          = @{
        PSData = @{
            Tags         = @('O365', 'Microsoft Graph', 'Exchange Online')
            LicenseUri   = 'https://github.com/djust270/M365.Report.Tools/blob/main/LICENSE'
            ProjectUri   = 'https://github.com/djust270/M365.Report.Tools'
            ReleaseNotes = 'https://github.com/djust270/M365.Report.Tools/blob/main/README.md'
        }
}
}








