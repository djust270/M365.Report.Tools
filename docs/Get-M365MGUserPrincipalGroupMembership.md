---
external help file: M365.Report.Tools-help.xml
Module Name: M365.Report.Tools
online version:
schema: 2.0.0
---

# Get-M365MGUserPrincipalGroupMembership

## SYNOPSIS
Return all groups a user is a member of

## SYNTAX

```
Get-M365MGUserPrincipalGroupMembership [[-UserID] <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns every group a user object is a member of

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-M365MGUserPrincipalGroupMembership -UserID djust@davidjust.com
```

Return a list of all groups user djust@davidjust.com is a member of. 

## PARAMETERS

### -UserID
Specify the AzureAD user object GUID or the UserPrincipalName of the user object. 

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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
