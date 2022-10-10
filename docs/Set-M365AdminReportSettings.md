---
external help file: M365.Report.Tools-help.xml
Module Name: M365.Report.Tools
online version:
schema: 2.0.0
---

# Set-M365AdminReportSettings

## SYNOPSIS
Set the admin report settings to show names or conceal for privacy

## SYNTAX

```
Set-M365AdminReportSettings [-ShowNames] [-ConcealNames]
```

## DESCRIPTION
Set the admin report settings to show names or conceal for privacy. The default value is to conceal names,
however you will likely need to show names for your reports. 

## EXAMPLES

### Example 1
```powershell
PS C:\> Set-M365AdminReportSettings -ShowNames
```

Update the admin report settings to show names in any admin reports. 

### Example 1
```powershell
PS C:\> Set-M365AdminReportSettings -ConcealNames
```
Update the admin report settings to conceal names in any admin reports. 

## PARAMETERS

### -ConcealNames
Specifying this parameter will conceal names in admin reports. 

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

### -ShowNames
Specifying this parameter will show names in admin reports. 

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
