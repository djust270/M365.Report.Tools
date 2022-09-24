function Get-M365MailboxReport
{
	param (
		[Switch]$SharedOnly,
        [Switch]$ResourceOnly,
        [Switch]$UserOnly,
        [Switch]$All,
        [Switch]$IncludeMailboxSize
	)
	if ($SharedOnly){
        $mailboxes = Get-Mailbox -Filter { isShared -eq 'true' }
    }
    if ($ResourceOnly){
        $mailboxes = Get-Mailbox -Filter { isResource -eq 'true' }
    }
    if ($UserOnly){
        $mailboxes = Get-Mailbox -Filter { (isShared -eq 'false') -and (isResource -eq 'false') }
    }
	$i = 1
	$MailboxDetails = foreach ($box in $mailboxes)
	{
		if ($box.isResource){$type = 'Resource'}
        if ($box.isShared){$type = 'Shared'}
        if (-not $box.isResource -and -not $box.isShared){$type = 'User'}
        Write-Progress -Activity "Processing Mailbox Report" -Status "Working on $($box.displayname)" -PercentComplete (($i / $mailboxes.Count) * 100)		
		$box | Select-Object Identity, Displayname, PrimarySMTPAddress, @{
            n = 'EmailAddresses'; e = { ($_.EmailAddresses -join ' , ') }},HiddenFromAddressListsEnabled,@{
                n = 'GrantSendOnBehalfTo'; e = { ($_.GrantSendOnBehalfTo -join ' , ') }},@{ 
                        n = 'Type' ; e={$type}}
        $i++
    }
    $i = 1
    if ($IncludeMailboxSize){
        foreach ($box in $MailboxDetails){
            Write-Progress -Activity "Processing Mailbox Permissions" -Status "Working on $($box.displayname)" -PercentComplete (($i / $mailboxes.Count) * 100) 
            $TotalSize = (Get-MailboxStatistics -Identity $box.identity).TotalItemSize
            $box | Add-Member -MemberType NoteProperty -Name 'TotalSize' -Value $TotalSize
        $i++
        }
    }    
	Return $MailboxDetails
}