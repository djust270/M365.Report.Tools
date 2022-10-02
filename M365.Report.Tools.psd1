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
	Description = 'Module description'
	
	# Minimum version of the Windows PowerShell engine required by this module
	PowerShellVersion	   = '5.1'

	# Dependancies
	RequiredModules      = @(
		'ImportExcel'
		'Microsoft.Online.Sharepoint.PowerShell'
		#'Microsoft.Graph'
		'ExchangeOnlineManagement'
	)

	# Functions to export from this module
	FunctionsToExport = @(
		'Get-M365TeamsUsageReport'
		'Get-M365TUserPrincipalGroups'
		'Get-M365MailboxReport'
		'Get-M365TeamsReport'
		'Get-M365SSOEnterpriseApps'		
		'Set-M365AdminReportSettings'
	)
		
	# Private data to pass to the module specified in ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
	PrivateData          = @{
        PSData = @{
            Tags         = @('Intune', 'MDM')
            LicenseUri   = 'https://github.com/djust270/M365.Report.Tools/blob/main/LICENSE'
            ProjectUri   = 'https://github.com/djust270/M365.Report.Tools'
            ReleaseNotes = 'https://github.com/djust270/M365.Report.Tools/blob/main/README.md'
        }
}
}








