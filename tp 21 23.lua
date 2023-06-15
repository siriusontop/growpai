-- NOTE THIS IT OUTDATED SCRIPT I ADDED THIS BECAUSE EVERYONE ASKING ITS NOT WORKING FUCK YALL GO TRY AND SEE YOURSELF 
function SetPos(x, y)
    local pkt = {}
    pkt.type = 0
    pkt.pos_x = x
    pkt.pos_y = y
    SendPacketRaw(pkt)
end

function Teleport(x, y)
  local start_x = 24
  local start_y = 23

  if (x > start_x) then
     for i = start_x, x do
       SetPos(i * 32, start_y * 32)
     end
  elseif (x < start_x) then
     for i = start_x, x, -1 do
       SetPos(i * 32, start_y * 32)
     end
  end

  if (y > start_y) then
     for i = start_y, y do
       SetPos(x * 32, i * 32)
     end
  elseif (y < start_y) then
     for i = start_y, y, -1 do
       SetPos(x * 32, i * 32)
     end
  end
end

local world_name = "XMSHK"
local x = 1
local y = 1
SendPacket(3, "action|join_request\nname|start\ninvitedWorld|0")
Sleep(5000)
SendPacket(3, "action|join_request\nname|" .. world_name .. "\ninvitedWorld|0")
Sleep(1000)
SendPacket(3, "action|quit_to_exit")
Sleep(400)
SendPacket(3, "action|quit_to_exit")
Teleport(x,y)
