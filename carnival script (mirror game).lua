local x = 101111
while true do
xp =math.floor(GetLocal().pos_x/32)
yp = math.floor(GetLocal().pos_y/32)
Sleep(500)
log(xp)
log(yp)
if xp ==27 and yp == 25 then
FindPath(26,25)
local packet = {}
packet.int_x = GetLocal().pos_x / 32
packet.int_y = GetLocal().pos_y / 32
packet.type = 7
SendPacketRaw(packet)
Sleep(500)
end
if xp ==14 and yp == 32 then
FindPath(24,24)
end
if x%10==1 then
SendPacket(2, "action|input\n|text|Script by `9@vivi_growtopia")
end
x=x-1
log(x)
end
