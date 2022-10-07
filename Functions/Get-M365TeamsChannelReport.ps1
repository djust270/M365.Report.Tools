function Get-M365TeamsChannelReport 
{
    [CmdletBinding(SupportsPaging=$true)]
    $RequiredScopes = @(
    'Channel.ReadBasic.All'
	'Team.ReadBasic.All'
	'TeamMember.Read.All')
    Set-M365MGGraphConnectionScopes -RequiredScopes $RequiredScopes
    $TeamsChannelReport = [System.Collections.Generic.List[PsObject]]::new()
    $Teams = Get-MgTeam -All
    $i = 1
    foreach ($Team in $Teams){
        Write-Progress -Activity "Processing Team Channel Report" -Status "Working on Team $($Team.DisplayName)" -PercentComplete (($i / $Teams.Count) * 100)    
        $Channels = Get-MgTeamChannel -TeamId $Team.id
        $Channels | ForEach-Object {
			$TeamsChannelReport.Add(
				[pscustomobject]@{
					'Team' = $Team.displayname
					'Channel' = $_.displayname
                    'ChannelMembers' = ((Get-MgTeamChannelMember -TeamId $Team.id -ChannelId $_.id).additionalproperties.email) -join ' , '
				}
			)
		}
        $i++
    }
    return $TeamsChannelReport
}