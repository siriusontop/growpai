local x = 1
local y = 1
local oid = 1
local count = 1
local iid = 1
for _,object in pairs(GetObjects()) do
    object.id = math.floor(object.id)
    if object.id == 242 then
	x = object.pos_x
	y = object.pos_y
    iid = object.id
    count = object.count
    oid = object.oid
    oid = math.floor(oid)
    x = x/32
    y = y/32
    x = math.floor(x)
    y = math.floor(y)
    iid = math.floor(iid)
    count = math.floor(count)
    log("`2"..x/32)
    log("`2"..y/32)
	log(object.id)
	log("`9"..x)
    log("`9"..y)
    log("`4"..oid)
    end
end
function VARLIST(v)
    if v[1]:find("left|6140|") then
        log("test")
    end
end
function hook3(type, packet)
    if packet:find("action|input\n|text|/take") then
        local pkt2 = "left\nadd_spacer|small|\nadd_textbox|Press on the icon to extract the item into your inventory.|left|\nadd_spacer|small|\nadd_textbox|`wItem List:|left|\nadd_label_with_icon_button_list|small|`w%s : %s|left|extractOnceObj_|itemID_itemAmount_worldObj|"..iid..","..count..","..oid.."\nadd_spacer|small|\nembed_data|tilex|"..x.."\nembed_data|tiley|"..y.."\nembed_data|startIndex|0\nembed_data|extractorID|6140\nend_dialog|extractor|Close||"
local pkt = "add_label_with_icon|big|`wExtract-O-Snap``|left|6140|\nadd_spacer|small|\nadd_textbox|GrowTech: use the Extract-O-Snap to pick out the items from the floating items in your world! - Thanks, Technician Dave.|"..pkt2
local var2 = {}
var2[0] = "OnDialogRequest"
var2[1] = pkt
var2.netid = -1
SendVarlist(var2)
return true
    end
end
AddCallback("OnVarlist", VARLIST)
AddCallback("OnPacket", hook3)
