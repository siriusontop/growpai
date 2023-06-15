messagetext = "Sirius#1705"; -- type ur msg here

function test(v)
    if v[0]:find("OnSpawn") then
        a = v[1]:gsub("`", "")
        name = a:match("name|(%a+%d+)")
        SendPacket(2, "action|input\n|text|/msg /"..string.sub(name,2).. " ".. messagetext)
        return false
    end
end
AddCallback("auto msg", "OnVarlist", test)
