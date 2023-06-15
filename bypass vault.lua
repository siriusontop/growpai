local y =1
local x =1
local cnt = 0
local text = "`4WRENCH VAULT , WRENCH STORAGE BOX AND TYPE /BYPASS!"
log(text)
function VARLIST2(v)
    if v[1]:find("add_label_with_icon|big|`wStorage") then
        cnt = cnt+1
        log(cnt)
        log("`9now type /bypass")
return true
    end
end
AddCallback("OnVarlist", VARLIST2)
function VARLIST(v)
    if v[1]:find("add_label_with_icon|big|`wSafe Vault`") then
        pkt = string.format([[action|dialog_return
ndialog_name|storageboxxtreme
tilex|%d|
tiley|%d|
itemid|2]], v[1]:match("embed_data|tilex|(%d+)"), v[1]:match("embed_data|tiley|(%d+)"))
        cnt = cnt+1
log(cnt)
    end
end
function hook2(type, packet)
    if packet:find("action|input\n|text|/bypass") then
        if cnt == 2 then
            SendPacket(2, pkt)
            log("`9BYPASSED!")
            cnt = 0
return true
        else
            log("you missed some steps! REPEAT")
            cnt = 0
return true
        end
    end
end
AddCallback("OnVarlist", VARLIST)
AddCallback("OnPacket", hook)
AddCallback("OnPacket", hook2)
