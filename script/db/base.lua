local mBase={}

local CData={
    m_Data = nil
}

function CData : New()
    local o = {}
end

function CData : LoadFromDB()
    print("load from db")
end

mBase={
    CData=CData,
}
return mBase
