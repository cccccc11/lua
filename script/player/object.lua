local mClass = require "class"
local mDB = require "db.base"

local CPlayer = {
    m_SuperClass = {mDB.CData},

    m_ID = 0,
    m_iLevel = 0,
    m_sName = "玩家",
}

function CPlayer:New(iID)
    local o = {}
    mClass:Super(o,CPlayer)
    return o
end

function CPlayer:Name()
    print("name "..self.m_sName)
    return self.m_sName
end

function CPlayer:Level()
    print("level "..self.m_iLevel)
    return self.m_iLevel
end

local mObject = {
    CPlayer=CPlayer,
}

return mObject
