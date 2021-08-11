setmetatable(_G, {
    __newindex = function(_, k)
        error("please set global key '"..k.."' by function SetGlobal")
        return
    end
})

rawset(_G, "SetGlobal", function(sKey,value)
    if _G[sKey]~=nil then
        error("sKey '"..sKey.."' is already in _G")
        return
    end
    rawset(_G, sKey, value)
end)

local mPlayer = require "player.init"

local oPlayer=mPlayer:LoadPlayer(4353729)
oPlayer:Name()

-- print("CHANGDU "..#{
--     {},
-- })
