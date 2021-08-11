local mClass = require "class"

local CBase1 = {
    m_Base = 1
}

function CBase1:Hello()
    print("hello")
end

local CBase2 = {
    m_SuperClass = {CBase1},
    m_Base1 = 2,
}

function CBase2:Hello()
    print("hello2")
end

local CBase3 = {
    m_SuperClass = {CBase2},
    m_Base2 = 3
}

local oBase3 = Class(CBase3)
local oBase3_1 = Class(CBase3)

print(oBase3.Hello)
print(oBase3_1.Hello)
