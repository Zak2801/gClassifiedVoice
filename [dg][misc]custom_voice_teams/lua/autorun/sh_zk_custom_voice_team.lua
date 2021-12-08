
local enabled = false
local ClassifiedTeam = { TEAM_GANG, TEAM_MOB } -- Which DarkRP Jobs are "Classified"

hook.Add( "PlayerCanHearPlayersVoice", "ZK_CVT_OnVoice", function( talker, listener )
    if not enabled then return true end
    if ( talker == listener ) then return true end

    if ( table.HasValue( ClassifiedTeam, talker:Team() ) ) then
        if ( table.HasValue( ClassifiedTeam, listener:Team() ) )  then
            return true
        else
            return false
        end
    else
        return true
    end
end )