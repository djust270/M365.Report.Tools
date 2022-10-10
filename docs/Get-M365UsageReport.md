---
external help file: M365.Report.Tools-help.xml
Module Name: M365.Report.Tools
online version:
schema: 2.0.0
---

# Get-M365UsageReport

## SYNOPSIS
Get the contents of any O365 Admin Center usage report. 

## SYNTAX

```
Get-M365UsageReport [-Period] <Object> [-ReportArea] <String> [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-M365UsageReport -ReportArea Office365ActiveUserDetail -Period D90
```

Get the Office365 Active User Detail report for the past 90 day period. 

### Example 2
```powershell
PS C:\> Get-M365UsageReport -ReportArea SharePointActivityUserDetail -Period D30 | Export-CSV -NoTypeInformation .\SPUserActivity.csv
```

Retrieve the SharePoint User Activity detail report for the past 30 days and export to a CSV file. 

## PARAMETERS

### -Period
Period in days for the report to include.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:
Accepted values: D7, D30, D90, D180

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReportArea
Specify the report to retrieve. 

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: TeamsTeamActivityDetail, TeamsDeviceUsageUserCounts, TeamsDeviceUsageTotalUserCounts, TeamsDeviceUsageDistributionUserCounts, TeamsDeviceUsageDistributionTotalUserCounts, TeamsUserActivityUserDetail, TeamsUserActivityCounts, TeamsUserActivityTotalCounts, TeamsUserActivityUserCounts, TeamsUserActivityTotalUserCounts, TeamsUserActivityDistributionUserCounts, TeamsUserActivityDistributionTotalUserCounts, TeamsUserActivityTotalDistributionCounts, TeamsTeamActivityDetail, TeamsTeamActivityCounts, TeamsTeamActivityDistributionCounts, EmailActivityUserDetail, EmailActivityCounts, EmailActivityUserCounts, EmailAppUsageUserDetail, EmailAppUsageAppsUserCounts, EmailAppUsageUserCounts, EmailAppUsageVersionsUserCounts, MailboxUsageDetail, MailboxUsageMailboxCounts, MailboxUsageQuotaStatusMailboxCounts, MailboxUsageStorage, Office365ActiveUserDetail, Office365ActiveUserCounts, Office365ServicesUserCounts, M365AppUserDetail, M365AppUserCounts, M365AppPlatformUserCounts, BrowserUserDetail, BrowserUserCounts, BrowserDistributionUserCounts, Office365GroupsActivityDetail, Office365GroupsActivityCounts, Office365GroupsActivityGroupCounts, Office365GroupsActivityStorage, Office365GroupsActivityFileCounts, OneDriveActivityUserDetail, OneDriveActivityUserCounts, OneDriveActivityFileCounts, OneDriveActivityUserDetail, OneDriveActivityUserCounts, OneDriveActivityFileCounts, OneDriveUsageAccountDetail, OneDriveUsageAccountCounts, OneDriveUsageFileCounts, OneDriveUsageStorage, SharePointActivityUserDetail, SharePointActivityFileCounts, SharePointActivityUserCounts, SharePointActivityPages, SharePointSiteUsageDetail, SharePointSiteUsageFileCounts, SharePointSiteUsageSiteCounts, SharePointSiteUsageStorage, SharePointSiteUsagePages

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
[Graph API Report](https://learn.microsoft.com/en-us/graph/api/resources/report)