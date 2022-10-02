function Set-M365AdminReportSettings {
    param(
        [Switch]$ShowNames,
        [Switch]$ConcealNames
    )
    $RequiredScopes = 'ReportSettings.ReadWrite.All'
    Set-M365MGGraphConnectionScopes -RequiredScopes $RequiredScopes
    if ($ShowNames){
        Invoke-MGGraphRequest -Method PATCH -uri "/beta/admin/reportSettings" -body @{ "displayConcealedNames" = $false }
    }
    else {
        Invoke-MGGraphRequest -Method PATCH -uri "/beta/admin/reportSettings" -body @{ "displayConcealedNames" = $true }
    }
}