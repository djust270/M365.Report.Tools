function Get-M365AdminReportSettings {   
    $RequiredScopes = 'ReportSettings.ReadWrite.All'
    Set-M365MGGraphConnectionScopes -RequiredScopes $RequiredScopes
    Invoke-MGGraphRequest -Method GET -uri "/beta/admin/reportSettings"
}