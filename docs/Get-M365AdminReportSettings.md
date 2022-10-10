---
external help file: M365.Report.Tools-help.xml
Module Name: M365.Report.Tools
online version:
schema: 2.0.0
---

# Get-M365AdminReportSettings

## SYNOPSIS
Returns the current admin report setting

## SYNTAX

```
Get-M365AdminReportSettings
```

## DESCRIPTION
Will return the current admin report privacy setting (conceal or show names).

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-M365AdminReportSettings

Name                           Value
----                           -----
displayConcealedNames          True
@odata.context                 https://graph.microsoft.com/beta/$metadata#admin/reportSettings/$entity
```

This example returned 'displayConcealedNames = True' meaning names will be shown in any admin center reports. The default value for displayConcealedNames is False. Use Set-M365AdminReportSettings to change this value. 

## PARAMETERS

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
[Graph API Admin Report Settings](https://learn.microsoft.com/en-us/graph/api/adminreportsettings-get)