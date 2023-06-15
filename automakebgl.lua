AddCallback("OnVarlist", hook223)
function VARLIST(v)
    if v[1]:find("Dial a number to call somebody in Growtopia.") then
        pkt = string.format([[action|dialog_return
dialog_name|phonecall
tilex|%d|
tiley|%d|
num|-2|
dial|53785]], v[1]:match("embed_data|tilex|(%d+)"), v[1]:match("embed_data|tiley|(%d+)"))
SendPacket(2, pkt)
return true
    end
end
AddCallback("OnVarlist", VARLIST)
function VARLIST2(v)
    if v[1]:find("embed_data|num|53785") then
        pkt2 = string.format([[action|dialog_return
dialog_name|phonecall
tilex|%d|
tiley|%d|
num|53785|
buttonClicked|chc5]], v[1]:match("embed_data|tilex|(%d+)"), v[1]:match("embed_data|tiley|(%d+)"))
SendPacket(2, pkt2)
return true
    end
end
AddCallback("OnVarlist", VARLIST2)
function VARLIST3(v)
    if v[1]:find("Excellent! I'm happy to sell you a Blue Gem Lock in exchange for 100 Diamond Lock") then
        pkt3 = string.format([[action|dialog_return
dialog_name|phonecall
tilex|%d|
tiley|%d|
num|-34|
buttonClicked|chc0]], v[1]:match("embed_data|tilex|(%d+)"), v[1]:match("embed_data|tiley|(%d+)"))
SendPacket(2, pkt3)
return true
    end
end
AddCallback("OnVarlist", VARLIST3)
function VARLISTcaca(v)
    if v[1]:find("If you have more I'm happy to sell you another Blue Gem Lock") then
        return true
    end
end
AddCallback("OnVarlist", VARLISTcaca)
