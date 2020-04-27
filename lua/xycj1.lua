function dbb(name,selected,text)
    v = math.random(1,6)
    if selected == 0 then
        if v == 1 then
            runCmd('money_op add "'..name..'" 5')
            sendText(name,"§6恭喜你中奖了啦,获得5铁币！")
        else
            if v == 5 then
                runCmd('money_op add "'..name..'" 10')
                sendText(name,"§6恭喜人品大爆发,触发暴击，获得10铁币！")
            else
                runCmd('money_op reduce "'..name..'" 5')
                sendText(name,"§6很遗憾哎，你失去了5铁币！")
            end
        end
    end
    if selected == 1 then
        if v == 2 then
            runCmd('money_op add "'..name..'" 5')
            sendText(name,"§6恭喜你中奖了啦,获得5铁币！")
        else
            if v == 5 then
                runCmd('money_op add "'..name..'" 10')
                sendText(name,"§6恭喜人品大爆发,触发暴击，获得10铁币！")
            else
                runCmd('money_op reduce "'..name..'" 5')
                sendText(name,"§6很遗憾哎，你失去了5铁币！")
            end
        end
    end
    if selected == 2 then
        if v == 3 then
            runCmd('money_op add "'..name..'" 5')
            sendText(name,"§6恭喜你中奖了啦,获得5铁币！")
        else
            if v == 5 then
                runCmd('money_op add "'..name..'" 10')
                sendText(name,"§6恭喜人品大爆发,触发暴击，获得10铁币！")
            else
                runCmd('money_op reduce "'..name..'" 5')
                sendText(name,"§6很遗憾哎，你失去了5铁币！")
            end
        end
    end
end
function xycj(name)
    GUI(name,"u_xycj")
end