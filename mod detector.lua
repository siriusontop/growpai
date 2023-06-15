function VARLIST69(v)
    if v[0] == "OnGuildDataChanged" then
        if v[3] == 276 then
log("`9Guardian in world!")
end
end
end    
AddCallback("OnVarlist", VARLIST69)
log("type `9/options `ofor mod detector options!")
    local x= "add_label_with_ele_icon|big|`wOnly check one or you will die!!``|left|2|0|\nadd_quick_exit|"
local var5 = {}
    var5[0] = "OnDialogRequest"
    var5[1] = "add_label_with_icon|7188|`9MOD DETECTOR! IF MOD JOINS:``|left|7188|\nadd_checkbox|TEST|Unacc and leave|0\nadd_checkbox|TEST2|Detect only|0\nadd_checkbox|TEST3|Unacc only|0\nadd_checkbox|TEST4|Stop|0\n"..x.."\nadd_label_with_icon|big|`wEnes best turkdog``|left|3030|\n\nadd_label_with_icon|big|`wAcee stop skidding! + USYG is a noob``|left|12420|\nend_dialog|surge|Cancel|MIAU!|"
    var5.netid = -1
function hook5(type, packet)
    if packet:find("action|input\n|text|/options") then
		SendVarlist(var5)
        return true
    end
end
    local vivi = true
    local vivi2 = false
    local vivi3 = false
    local var = {}
    var[0] = "OnAddNotification"
    var[1] = "interface/atomic_button.rttex"
    var[2] = "`4MOD IN WORLD!!"
    var[3] = "audio/hub_open.wav"
    var[4] = 0
    var.netid = -1
    function VARLIST1(v)
    if vivi == true then
    if v[0] == "OnGuildDataChanged" then
        if v[3] == 5956 then
            log("`9MOD ENTERED WORLD!")
            SendVarlist(var)
            if vivi2 == true then
            SendPacket(2, "action|input\n|text|/unaccess")
            SendPacket(2, "action|dialog_return\ndialog_name|unaccess")
            if vivi3 == true then
            SendPacket(3, "action|quit_to_exit")
    end
        end
    end
    end
    end
    end
    AddCallback("OnVarlist", VARLIST1)
    function hook(type, packet)
        if packet:find("TEST|1") then
            log("`9all features are active")
          vivi = true
        vivi2 = true
        vivi3 = true
            return true
        end
    end
    function hook2(type, packet)
        if packet:find("TEST2|1") then
            log("`9Detect activated")
        vivi = true
        vivi2 = false
        vivi3 = false
            return true
        end
    end
    function hook4(type, packet)
        if packet:find("TEST4|1") then
            log("`9Mod detect stopped")
        vivi = false
        vivi2 = false
        vivi3 = false
            return true
        end
    end
