---
external help file: M365.Report.Tools-help.xml
Module Name: M365.Report.Tools
online version:
schema: 2.0.0
---

# Get-M365TeamsUsageReport

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
Get-M365TeamsUsageReport [-Period] <Object> [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-M365TeamsUsageReport -Period D180
```

Pull down the teams usage report for the past 180 days.

## PARAMETERS

### -Period
Specify the report time period. Valid values are D7, D30, D90 and D180. Defaults to D90. 

```yaml
Type: Object
Parameter Sets: (All)
Aliases:
Accepted values: D30, D90, D180

Required: True
Position: 0
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
https://learn.microsoft.com/en-us/graph/api/reportroot-getteamsteamactivitydetail?view=graph-rest-beta