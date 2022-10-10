---
external help file: M365.Report.Tools-help.xml
Module Name: M365.Report.Tools
online version:
schema: 2.0.0
---

# Get-M365SSOEnterpriseApps

## SYNOPSIS
List all enterprise applications with SSO integration.

## SYNTAX

```
Get-M365SSOEnterpriseApps
```

## DESCRIPTION
List out all enterprise applications (service principals) in AzureAD with SAML SSO integration by utilizng the Microsoft Graph PowerShell SDK. Also list SAML signing certitifcate expiration date and notification email address(s).

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-M365SSOEnterpriseApps | Export-Excel -Path C:\Reports\M365MasterReport.xlsx -Worksheetname SSOApps -TableName SSOApps -Autosize
```

List out all all enterprise applications in AzureAD with SAML SSO integration. Export to an Excel workbook by piping to Export-Excel. 

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
[Graph API Get-MGServicePrincipal](https://learn.microsoft.com/en-us/powershell/module/microsoft.graph.applications/get-mgserviceprincipal?view=graph-powershell-1.0)