local msg = "Sirius#1705" -- type your text here
local DELAY = 10500 -- you change delay from here

local Colors = {"1","2","3","4","6","7","8","9","0","o","p","b","c","#","@","$","w","q","e","r","t","a","s"}
function Randomizer(text)
    local Random = Colors[math.random(#Colors)]
    return "`"..Random..text
    end
while true do
    SendPacket(2, "action|input\n|text|"..Randomizer(msg))
    Sleep(DELAY)
    end
