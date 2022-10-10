function Get-M365SharePointSiteSummary {
    [CmdletBinding()]
    param (
        [Switch]$IncludPersonalSites
    )
    Set-M365MGGraphConnectionScopes -RequiredScopes 'Sites.Read.All'
    $SharepointAdminURL = (Invoke-MgGraphRequest -Uri 'https://graph.microsoft.com/v1.0/sites?$select=siteCollection,webUrl&$filter=siteCollection/root%20ne%20null').value.weburl -replace '.sharepoint', '-admin.sharepoint'
    Try {
        Write-Host "Attempting to connect to SharePoint Online..."
        Connect-SPOService -Url $SharepointAdminURL
    }
    catch [System.Management.Automation.CommandNotFoundException]{
        Throw "You must first call install the SharePoint Online PowerShell module before running this command (Microsoft.Online.SharePoint.PowerShell)"    
    }
    Catch {
        throw $_ # Send terminating error       
    }
    if ($IncludPersonalSites){
    $Sites = Get-SPOSite -IncludePersonalSite $true -Limit ALL
    }
    else {
       $Sites = Get-SPOSite -Limit ALL
    }
    $Sites | Select-Object Title, Url, StorageQuota, StorageUsageCurrent, Owner, SharingCapability
    Write-Warning "Please remember to disconnect from SharePoint Online by using 'Disconnect-SPOService'"
}