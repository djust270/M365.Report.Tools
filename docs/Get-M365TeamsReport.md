---
external help file: M365.Report.Tools-help.xml
Module Name: M365.Report.Tools
online version:
schema: 2.0.0
---

# Get-M365TeamsReport

## SYNOPSIS
Get a report listing every Microsoft Team

## SYNTAX

```
Get-M365TeamsReport
```

## DESCRIPTION
Returns a report listing every Microsoft Team, including name, description, visibility and members. 

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-M365TeamsReport | Export-Excel -path C:\Reports\MasterReport.xlsx -Worksheetname TeamsReport -Tablename Teams
```

Get a report for every Microsoft Team and export to an excel workbook by piping to Export-Excel.

### Example 2
```powershell
PS C:\> Get-M365TeamsReport | Export-CSV -path C:\reports\TeamsReport.csv -NoTypeInformation
```

Get a report for every Microsoft Team and export to a CSV file by piping to Export-CSV. Exclude .NET type information. 

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
[Graph API Get-MGTeam](https://learn.microsoft.com/en-us/powershell/module/microsoft.graph.teams/get-mgteam?view=graph-powershell-beta)