number = 19 -- type number here
color = 4 -- change color here

SendPacket(2, "action|input\n|text|`7[``" .. GetLocal().name .. "`7 spun the wheel and got `" .. color .. "" .. number .."`7!`7]``")
