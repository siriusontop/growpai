AddCallback("OnVarlist", VARLISTcaca)
function hookc1(varlist)
    if varlist[0] == "OnTalkBubble" and varlist[3]~= -1 then
        if varlist[2]:find("spun the wheel and got") then
            local var = {}
            var[0] = "OnTalkBubble"
            var[1] = varlist[1]
            var[2] = "[`bVIVI MIAU!`w] "..varlist[2]
            var[3] = -1
            var.netid = -1
            SendVarlist(var)
        return true
        end
    end
end
    AddCallback("OnVarlist", hookc1)
