---
external help file: M365.Report.Tools-help.xml
Module Name: M365.Report.Tools
online version:
schema: 2.0.0
---

# Get-M365UserLicenseReport

## SYNOPSIS
Get a list of every user and their assigned licenses

## SYNTAX

```
Get-M365UserLicenseReport [<CommonParameters>]
```

## DESCRIPTION
This report with generate a list of every user and each license assigned to that user for easy export. 

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-M365UserLicenseReport | Export-Excel -path C:\Reports\MasterReport.xlsx -Worksheetname UserLicenseReport -Tablename UserLicenses
```

Export the user licese report to the excel workbook MasterReport.xlsx by piping to Export-Excel

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
