---
external help file: M365.Report.Tools-help.xml
Module Name: M365.Report.Tools
online version:
schema: 2.0.0
---

# Get-M365UserReport

## SYNOPSIS
Get a summary report for all user accounts in an M365 tenant. 

## SYNTAX

```
Get-M365UserReport [[-AddProperties] <String[]>] [-IncludeTotalCount] [-Skip <UInt64>] [-First <UInt64>]
 [<CommonParameters>]
```

## DESCRIPTION
Get a report of all user accounts, including guest accounts. By default, returns the following properties: 
UserPrincipalName
id
AccountEnabled
Mail
JobTitle
PasswordPolicies
UserType
CreatedDateTime
OnPremisesSyncEnabled
MobilePhone
BusinessPhone
OfficeLocation
UsageLocation
StreetAddress
City

Add addtional properties to report with -AddProperties. 

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-M365UserReport | Export-Excel -path C:\Reports\MasterReport.xlsx -Worksheetname UserReport -Tablename UserReport 
```

Export the user report to the excel workbook 'MasterReport.xlsx' on worksheet name 'UserReport'.

## PARAMETERS

### -AddProperties
Specify additional properties to add to output. 

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -First
Gets only the specified number of objects.
Enter the number of objects to get.

```yaml
Type: UInt64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeTotalCount
Reports the total number of objects in the data set (an integer) followed by the selected objects.
If the cmdlet cannot determine the total count, it displays "Unknown total count." The integer has an Accuracy property that indicates the reliability of the total count value.
The value of Accuracy ranges from 0.0 to 1.0 where 0.0 means that the cmdlet could not count the objects, 1.0 means that the count is exact, and a value between 0.0 and 1.0 indicates an increasingly reliable estimate.

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

### -Skip
Ignores the specified number of objects and then gets the remaining objects.
Enter the number of objects to skip.

```yaml
Type: UInt64
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
[Graph API Get-MGUser](https://learn.microsoft.com/en-us/powershell/module/microsoft.graph.users/get-mguser)