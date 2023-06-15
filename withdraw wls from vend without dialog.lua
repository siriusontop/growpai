local x
local y
function hook(varlist)
    if varlist[1]:find("add_smalltext|You have earned") then
	x = math.floor(GetLocal().pos_x/32)
	y = math.floor(GetLocal().pos_y/32)
local packet= "action|dialog_return\ndialog_name|vending\ntilex|"..x.."|\ntiley|"..y.."|\nbuttonClicked|withdraw"
 SendPacket(2, packet)
log("`9Auto Withdrew!")
        return true
    end
end
AddCallback("OnVarlist", hook)
