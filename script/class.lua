local function Search(key,BaseList)
    for i=1,#BaseList do
        local val = BaseList[i][key]
        if val then
            return val
        end
    end
    return nil
end

local Super
Super = function(baseObj, baseClass)
    -- 数据
    for i=1, #baseClass.m_SuperClass do
        local cls = baseClass.m_SuperClass[i]
        if cls.m_SuperClass ~= nil then
            baseObj = Super(baseObj, cls)
        end
        for key,v in pairs(cls) do
            if key ~= "m_SuperClass" then
                baseObj[key] = v
            end
        end
    end

    -- -- 函数
    -- setmetatable(baseClass, {
    --     __index = function (_, k)
    --         return Search(k, baseClass.m_SuperClass)
    --     end
    -- })
    -- setmetatable(baseObj, {__index=baseClass})
    return baseObj
end

function Class(baseClass)
    local o = {}
    Super(o, {m_SuperClass= {baseClass} })
    return o
end
