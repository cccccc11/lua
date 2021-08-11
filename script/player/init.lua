local mObject = require "player.object"

local mInit = {}

SetGlobal("g_PlayerMgr",{})

function mInit : LoadPlayer(iID)
    local o = mObject.CPlayer:New(iID)
    g_PlayerMgr[iID] = o
    o:LoadFromDB()
    return o
end

return mInit
