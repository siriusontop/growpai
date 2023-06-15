frienduid = 80560818
mods = {2,25,682,536707,32036726,22353525,29121568,29160268,23369178,16966321,23274860,32036087,22242821,25181947,24233063,25176812,45400905,47850061,45518360,38690496,25773007,41539504,41538133,36709249,36559671,41537947,8651339,41538029,15006163,36310143,538522,553625,25374,24969470,54432183,294619,33836788,36713808,41537968,308143,3804202,41208310,43432233,38753466,7275489,44250099,47093010,47119248,47094621,41263973,42705852,300429,50736935,49457053,50733363,42372593,45035973,47193235,51202047,29432008,27410283}
modnames = {"Seth","Hamumu","Solorien","Misthios","Kailyx","Ubidev","UbiOps","Sabaei","MarkFeller","Fournos","MsIvy","NoFace","VectorCat","ThePsyborg","nPlus1","BumbleFish","pTORT","Morse1","EnchantedBean","Baskerville","Kairos","HuffleWitz","pharaohboi","vvCephei","GadnokBow","Rimanah","LunaPurl","Kodrex","Bleulabel","Pangloss","akiko","Jenuine","Anulot","Qadevone","Xinyi","ByteCode","Nostos","Gatello","MissDropBear","Tharapita","Explorate","Akrius","Serenite","Lunatary","Elbanna","Caitriona","HollowDragon","MrKeter","Sadilus","trinculo","WindyPlay","CoconutShrimp","Nevalis","Zohros","MistPhantom","Xialios","AsimovRust","Cardai","Anarion","Orangejuice","Simba"}
function hook2(type, packet)
    if packet:find("action|input\n|text|/checkmods") then
        log("checking mods")
        niga = 0
        for i=1 ,61 do
            local niga = 1
            function mod3(v)
                if v[1]:find("add_textbox|`oThat user has logged off.``|left|") then
                    niga = niga+1
                    return true
                end
            end
            AddCallback("OnVarlist", mod3)
            function mod(v)
                if v[1]:find("add_label_with_icon|big|`5Message to") then
                    log("`#@"..modnames[niga].."`0 is `2ONLINE")
                    niga = niga+1
                    return true
                end
            end
            AddCallback("OnVarlist", mod)
            function mod2(v)
                if v[1]:find("add_label_with_icon|big|`5Sorry, that mod is undercover right now, you can't send a message.|left|660|") then
                    log("`#@"..modnames[niga].."`0 is `9UNDERCOVER!")
                    niga = niga+1
                    return true
                end
            end
            AddCallback("OnVarlist", mod2)
        view(frienduid,mods[i])
    end
    return true
end
end
AddCallback("OnPacket", hook2)
        function view(frienduid,moduid)
        SendPacket(2, "action|friends\ndelay|0")
        SendPacket(2, "action|dialog_return\ndialog_name|socialportal\nbuttonClicked|showfriend")
        SendPacket(2, "action|dialog_return\ndialog_name|friends\nbuttonClicked|"..frienduid)
        SendPacket(2, "action|dialog_return\ndialog_name|friends_edit\nfriendID|"..moduid.."|\nbuttonClicked|msg")
        end
        function mod5(v)
            if v[1]:find("add_label_with_icon|big| `wSocial Portal`` |left|1366|") then
             return true
            end
        end
        AddCallback("OnVarlist", mod5)
        function mod6(v)
            if v[1]:find("add_button|friend_all|Show offline and ignored too|noflags|0|0|") then
             return true
            end
        end
        AddCallback("OnVarlist", mod6)
        function mod7(v)
            if v[1]:find("add_button|remove|Remove as friend|noflags|0|0|") then
             return true
            end
        end
        AddCallback("OnVarlist", mod7)
