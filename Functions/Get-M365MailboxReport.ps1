function Get-M365MailboxReport
{
	param (
		[Switch]$SharedOnly,
        [Switch]$ResourceOnly,
        [Switch]$UserOnly,
        [Switch]$All,
        [Switch]$IncludeMailboxSize,
        [String[]]$AddProperties
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
    $MailboxDetails = [System.Collections.Generic.List[PsObject]]::new()
    foreach ($box in $mailboxes)
	{
		if ($box.isResource){$type = 'Resource'}
        if ($box.isShared){$type = 'Shared'}
        if (-not $box.isResource -and -not $box.isShared){$type = 'User'}
        Write-Progress -Activity "Processing Mailbox Report" -Status "Working on $($box.displayname)" -PercentComplete (($i / $mailboxes.Count) * 100)		
		$SingleMailboxDetails = $box | Select-Object Identity, Displayname, PrimarySMTPAddress, @{
            n = 'EmailAddresses'; e = { ($_.EmailAddresses -join ' , ') }},HiddenFromAddressListsEnabled,@{
                n = 'GrantSendOnBehalfTo'; e = { ($_.GrantSendOnBehalfTo -join ' , ') }},@{ 
                        n = 'Type' ; e={$type}}
        foreach ($NewProp in $AddProperties){
            Write-Progress -Activity "Adding Additional Properties" -Status "Working on $NewProp for mailbox $($box.displayname)"
            $SingleMailboxDetails | Add-Member -MemberType NoteProperty -Name $NewProp -Value ($box | Select-Object -ExpandProperty $NewProp)
        }
        $MailboxDetails.Add($SingleMailboxDetails)       
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