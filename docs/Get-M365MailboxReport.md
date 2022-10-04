---
external help file: M365.Report.Tools-help.xml
Module Name: M365.Report.Tools
online version:
schema: 2.0.0
---

# Get-M365MailboxReport

## SYNOPSIS
List out all mailboxes in Exchange Online for easy export to a report file. 

## SYNTAX

```
Get-M365MailboxReport [-SharedOnly] [-ResourceOnly] [-UserOnly] [-All] [-IncludeMailboxSize]
 [[-AddProperties] <String[]>]
```

## DESCRIPTION
List out all active mailboxes or filter by shared, resource or user mailboxes. Optionally include mailbox size. By default, outputs mailbox identity, displayname, email addresses (aliases), primary email address, type, address list hidden policy, recipeints with send on behalf permisson and forwarding details. Additional properties can be specified. 

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-M365MailboxReport -UserOnly -IncludeMailboxSize -AddProperties MaxSendSize | Export-Excel -Path C:\reports\M365MasterReport -WorksheetName MailboxReport -tablename MailboxReport -Autosize
```
List all user mailboxes, including mailbox size and maximum outgoing message size. Export to an excel workbook. 

### Example 2 
```powershell
PS C:\> Get-M365MailboxReport -SharedOnly 
```
List only shared mailboxes. 

## PARAMETERS

### -AddProperties
Specify one or more additional mailbox properties to display. 

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

### -All
This will list all active, non-archive mailboxes. 

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

### -IncludeMailboxSize
This will retrieve the current mailbox total size. 

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

### -ResourceOnly
Use this to only return resource mailboxes

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

### -SharedOnly
Use this to only retun shared mailboxes

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

### -UserOnly
Use this to only return user mailboxes. 

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

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
