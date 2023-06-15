local price = 511
local item = "Punch Jammer"
local name = "vivi0006" [[cant get local name bcs owner green name]]
function VARLIST(type, packet)
    if packet:find(price) then
RunThread(function()
Sleep(50)
    SendPacket(2, "action|input\n|text|[`0"..name.." `0changed the price of `2"..item.." `0to `61 per World Lock`0.]")
    end)
end
end
AddCallback("OnPacket", VARLIST)
