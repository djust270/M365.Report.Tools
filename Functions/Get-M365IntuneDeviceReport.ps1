function Get-M365IntuneDeviceReport {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
		[ValidateSet('Windows','Android','Linux','iOS','All')]
		$DeviceType
    )
    $RequiredScopes = 'DeviceManagementConfiguration.Read.All'
	Set-M365MGGraphConnectionScopes -RequiredScopes $RequiredScopes
    $Devices = Get-MgDeviceManagementManagedDevice
    return $Devices
}