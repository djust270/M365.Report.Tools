---
external help file: M365.Report.Tools-help.xml
Module Name: M365.Report.Tools
online version:
schema: 2.0.0
---

# Get-M365SharePointSiteSummary

## SYNOPSIS
Return a summary list of all SharePoint sites. 

## SYNTAX

```
Get-M365SharePointSiteSummary [-IncludPersonalSites] [<CommonParameters>]
```

## DESCRIPTION
A simple wrapper function around 'Get-SPOSite'. This will handle connecting to SharePoint online and return a list of all SharePoint sites, including Title, Url, StorageQuota, StorageUsageCurrent, Owner, SharingCapability. 

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-M365SharePointSiteSummary 
```

Return a summary list of all SharePoint sites (excluding OneDrive sites)

## PARAMETERS

### -IncludPersonalSites
Include OneDrive sites in summary report. 

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
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
https://learn.microsoft.com/en-us/powershell/module/sharepoint-online/get-sposite?view=sharepoint-ps