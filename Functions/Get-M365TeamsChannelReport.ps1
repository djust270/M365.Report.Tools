function Get-M365TeamsChannelReport 
{
    $TeamsChannelReport = [System.Collections.Generic.List[PsObject]]::new()
    $Teams = Get-MgTeam -All
    foreach ($Team in $Teams){    
        $Channels = Get-MgTeamChannel -TeamId $Team.id
        $Channels | ForEach-Object {
			$TeamsChannelReport.Add(
				[pscustomobject]@{
					'Team' = $Team.displayname
					'Channel' = $_.displayname
				}
			)
		}
    }
    return $TeamsChannelReport
}