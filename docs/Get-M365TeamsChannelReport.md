---
external help file: M365.Report.Tools-help.xml
Module Name: M365.Report.Tools
online version:
schema: 2.0.0
---

# Get-M365TeamsChannelReport

## SYNOPSIS
List out all teams channels for every team. 

## SYNTAX

```
Get-M365TeamsChannelReport
```

## DESCRIPTION
List out every team channel and their associated members. 

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-M365TeamsChannelReport | Export-Excel -path C:\Reports\MasterReport.xlsx -Worksheetname TeamsChannelReport -Tablename TeamsChannels -Autosize
```

Get a report for every teams channel and export to an excel workbook by piping to Export-Excel

### Example 2
```powershell
PS C:\> Get-M365TeamsChannelReport | Export-CSV -path C:\reports\TeamsChannelReport.csv -notypeinformation 
```

Get a report for every teams channel and export to a CSV file by piping to Export-CSV. Exclude .NET type information. 

## PARAMETERS

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
[Graph API Get-MGTeamChannel](https://learn.microsoft.com/en-us/powershell/module/microsoft.graph.teams/get-mgteamchannel?view=graph-powershell-beta)