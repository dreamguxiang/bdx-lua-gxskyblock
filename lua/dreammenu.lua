--提供NPC函数
--请到npccode.lua查看

--处理主菜单--
function jx520(name,selected,text)
  date = os.date("%Y-%m-%d");
  if selected == 0 then --基础菜单
    GUI(name,"u_base")
   elseif selected == 1 then --back
    runCmdAs(name,"back")
   elseif selected == 2 then --活动菜单
    if dget(name,"gSign") == "true" then
      GUI(name,"u_huod",name,date,"已领取")
     else
      GUI(name,"u_huod",name,date,"未领取")
    end
   elseif selected == 3 then --传送菜单
    GUI(name,"u_post")
   elseif selected == 4 then --经济菜单
    GUI(name,"u_mone",L("getMoney",name))
   elseif selected == 5 then --领地菜单
    GUI(name,"u_land")
   elseif selected == 6 then --关于菜单
    dput(name,"gCar","tru")
    GUI(name,"u_about")
  end





  --处理活动菜单
  function huod(name,selected,text)
    if selected == 0 then
      sendText(name,"§6请去主城签到！")
     elseif selected == 1 then
      if dget(name,"gCar") == "true" then
        sendText(name,"§6您已经参与过该活动了")
       else
        if tonumber(L("getMoney",name)) >= 200 then
          sendText(name,"§6购买成功！")
          L("rdMoney",name,200)
          dput(name,"gCar","true")
          runCmd('execute "'..name..'" ~ ~ ~ summon expansion:safari_vehicle ~ ~ ~')
        end
      end
     elseif selected == 2 then
      runCmdAs(name,"gui menu")
    end
  end



  --基础菜单--
  function base(name,selected,text)
    if selected == 0 then
      runCmd('warp go 主城')
     elseif selected == 1 then
      runCmd('gamemode 0 "'..name..'"')
      sendText(name,"§6已切换为生存模式")
     elseif selected == 2 then
      runCmd('kill "'..name..'"')
     elseif selected == 3 then
      runCmd('execute "'..name..'" ~ ~ ~ spawnpoint @s ~ ~ ~')
      sendText(name,"§6已设置出生点")
     elseif selected == 4 then 
      GUI(name,"w")
     elseif selected == 5 then
      runCmdAs(name,"gui menu")
    end

  end

end

--处理传送菜单
function post(name,selected,text)
  if selected == 0 then --家园
    GUI(name,"homegui",getHomesV(name))
   elseif selected == 1 then --添加家园
    GUI(name,"addhome")
   elseif selected == 2 then --地标
    runCmdAs(name,"warp gui")
   elseif selected == 3 then --玩家
    GUI(name,"tpagui")
   elseif selected == 4 then --返回
    runCmdAs(name,"gui menu")
  end

end

--处理经济菜单
function money(name,selected,text)
  if selected == 0 then --基础菜单
    GUI(name,"moneygui",getMoney(name))
   elseif selected == 1 then --活动菜单
    runCmdAs(name,"money hist")
   elseif selected == 2 then
    runCmd('tp "'..name..'" '..dh)
   elseif selected == 3 then
    runCmdAs(name,"gui menu")
  end

end

--处理领地菜单
function land(name,selected,text)
  if selected == 0 then
    runCmdAs(name,"gui land_cra")
   elseif selected == 1 then
    GUI(name,"landgui_main")
   elseif selected == 2 then
    runCmdAs(name,"gui menu")
  end
end


--处理领地菜单工具
function land_cra(name,selected,text)
  if selected == 0 then
    runCmdAs(name,"land a")
   elseif selected == 1 then
    runCmdAs(name,"land b")
   elseif selected == 2 then
    runCmdAs(name,"land buy")
   elseif selected == 3 then
    runCmdAs(name,"land info")
   elseif selected == 4 then
    runCmdAs(name,"gui land")
  end
end

event.Filter("CMD","c'",true,function(name,a)
    GUI(name,"u_menu")
    sendText(name,"§6打开菜单成功")
    return -1
end)

event.Filter("CMD","home gui",true,function(name,a)
    GUI(name,"homegui",getHomesV(name))
    sendText(name,"§6打开家园菜单成功")
    return -1
end)

function csfs(name)--传送法师
  runCmdAs(name,"warp gui")
end

function w(name,rawdata,data)--私聊
	runCmdAs(name,string.format("w \"%s\" %s",data[1],rawdata[3]))
end

function homeadd(name,rawdata,data)--家园添加
  adh = string.format('%s',rawdata[2])
  runCmdAs(name,'home add "'..adh..'"')
end
