function Get-M365TeamsReport 
{
    $RequiredScopes = @('Team.ReadBasic.All','TeamMember.Read.All')
    Set-M365MGGraphConnectionScopes -RequiredScopes $RequiredScopes
    Select-MgProfile beta
    $Teams = Get-MgTeam -All
    $TeamsReport = [System.Collections.Generic.List[PsObject]]::new()
    $i = 1
    foreach ($Team in $Teams)
    {
        Write-Progress -Activity "Processing Teams details" -Status "Working on $($Team.displayname)" -PercentComplete (($i / $Teams.Count) * 100)
        $TeamMembers = Get-MgTeamMember -TeamId $Team.id
        Write-Progress -Activity "Working on Team Channels"
        $i++
        $TeamsReport.Add([pscustomobject]@{
                'TeamName' = $Team.displayname
                'Description' = $Team.Description
                'Visibility' = $Team.Visibility
                'Members' = $TeamMembers.AdditionalProperties.email -join ' , '
            })
    }
    return $TeamsReport
}