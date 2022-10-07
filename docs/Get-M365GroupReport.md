---
external help file: M365.Report.Tools-help.xml
Module Name: M365.Report.Tools
online version:
schema: 2.0.0
---

# Get-M365GroupReport

## SYNOPSIS
List all groups and group types from Azure AD including source of authority. 

## SYNTAX

```
Get-M365GroupReport [-All] [-DynamicOnly] [-UnifiedOnly] [-SecurityOnly] [-DistroOnly]
```

## DESCRIPTION
List out all groups in Azure AD. Easily filter by security groups, O365 (unified) groups, dynamic groups, distribution groups or list all. Outputs group name, object ID, MailEnabled, Mail, and source (OnPrem or Cloud) and dynamic membership rule. 

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-M365GroupReport | Export-CSV -notypeinformation -path C:\reports\AzADGroupReport.csv
```

Export a list of all groups to a CSV file. 

### Example 2
```powershell
PS C:\> Get-M365GroupReport | Export-Excel -path C:\reports\M365MasterReport.xlsx -worksheetname M365GroupReport -tablename GroupReport -Autosize
```

Export a list of all groups into an excel workbook as a table on an excel worksheet.

## PARAMETERS

### -All
This will output all grouptypes. 

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

### -DistroOnly
List only distribution groups 

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

### -DynamicOnly
List only dynamic membership groups

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

### -SecurityOnly
List only security enabled groups

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

### -UnifiedOnly
List only Office 365 groups

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
