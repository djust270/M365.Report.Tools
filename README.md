# M365.Report.Tools
A PowerShell Module with tools built for gathering data and creating reports on various areas of M365 services. This module is designed with ease of use with several baked in custom reports and the ability to export any built in Admin center usage report. Reports can be easily exported to CSV file, Excel workbook(s), or JSON. 

This module leverages the Microsoft Graph PowerShell SDK, Exchange Online PowerShell, SharePoint Online PowerShell and ImportExcel. The majority of commands use the Graph SDK and seamlessly handle the permission scope and connection to Graph for you. For more information on working with the Graph SDK see [my article](https://davidjust.com/post/working-with-microsoft-graph-powershell-sdk/).

To install:
```powershell
Install-Module M365.Report.Tools
```

[PowerShell Gallery Page](https://www.powershellgallery.com/packages/M365.Report.Tools/1.0)

## [Get-M365GroupReport](docs/Get-M365GroupReport.md)
Report of every group including group type and source of authority.

## [Get-M365MailboxReport](docs/Get-M365MailboxReport.md)
Report of every mailbox including details such as mailbox size. 

## [Get-M365MGUserPrincipalGroupMembership](docs/Get-M365MGUserPrincipalGroupMembership.md)
Get every group a user is a member of

## [Get-M365SharePointSiteSummary](docs/Get-M365SharePointSiteSummary.md)
Summarize all Sharepoint sites including details for each site such as storage usage and sharing capabilites. 

## [Get-M365SSOEnterpriseApps](docs/Get-M365GroupReport.mdGet-M365SSOEnterpriseApps.md)
Return all AzureAD enterprise applications with SAML SSO integration. 

## [Get-M365TeamsChannelReport](docs/Get-M365TeamsChannelReport.md)
Return a list of every channel in each Team including members. 

## [Get-M365TeamsReport](docs/Get-M365TeamsReport.md)
Return a list of all Teams and Team members.

## [Get-M365TenantLicenseReport](docs/Get-M365TenantLicenseReport.md)
Return a list of all licenses in a tenant including current utilization.

## [Get-M365UsageReport](docs/Get-M365UsageReport.md)
Return any of the baked in Admin Center period usage reports for easy export. 

## [Get-M365UserLicenseReport](docs/Get-M365UserLicenseReport.md)
List every license assigned to every user

## [Get-M365UserReport](docs/Get-M365UserReport.md)
Get a summary report for all user accounts in an M365 tenant. 

## [Get-M365AdminReportSettings](docs/Get-M365AdminReportSettings.md)
Get the current Admin Report setting for Admin Center period usage reports.

## [Set-M365AdminReportSettings](docs/Set-M365AdminReportSettings.md)
Change the admin report settings to hide or show names in Admin Center usage reports. 

# *Known Issues*

If using PowerShell Core (any version above 5.1) there is an issue with the SPO module (Microsoft.Online.SharePoint.PowerShell). You must
install this module under Windows PowerShell, then use compatability mode to import the module into PowerShell core 
```Import-Module Microsoft.Online.SharePoint.PowerShell -UseWindowsPowerShell ```

Please remember to disconnect from the Microsoft Graph / Exchange Online / SharePoint online after using any of these functions!