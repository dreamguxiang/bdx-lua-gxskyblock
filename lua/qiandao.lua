--进游戏事件
function join(name)
  date = os.date("%Y年%m月%d日")
  datt = dget(name,"gDate")
  dat = os.date("%d")
  online = getHomesV(name)
  if dget(name,"gDays") == nil then
    days = 0
   else
      days = tonumber(dget(name,"gDays"))
  end

  if date ~= datt then
    dput(name,"gDays",1+days) --记录游戏天数
    dput(name,"gDate",date) --记录游戏日期
    dput(name,"gSign","false") --记录签到状态
    Log("玩家"..name.."是第"..dget(name,"gDays").."天进入游戏")
    sendText(name,"§l§d欢迎回来§c"..name.."§d今天是§c"..datt.."§d您已累计登录了§c"..days.."§d天",5)
   elseif date == datt then
    sendText(name,"§l§d欢迎回来§c"..name.."§d今天是§c"..datt.."§d您已累计登录了§c"..days.."§d天",5)
   else
    dput(name,"gDays",1) --初次游戏天数
    dput(name,"gDate",date) --初次游戏日期
    dput(name,"gSign",false) --初次签到状态
    Log("玩家"..name.."初次进入游戏")
  end
end
--签到
function sign(name)
  jx = math.random(5,15)
  if dget(name,"gSign") == "true" then
    sendText(name,"§6请不要重复签到")
   else
    if tonumber(dget(name,"gDays")) == 1 then
      runCmd('scoreboard players add "'..name..'" gp '..jx..'')
      sendText(name,"§b本次签到获得§c"..jx.."§bGP")
      dput(name,"gSign","true")
     else
      cont = tonumber(dget(name,"gDays"))
      cont = math.floor(jx)
      print(type(cont)..cont)
      runCmd('scoreboard players add "'..name..'" gp '..cont..'')
      sendText(name,"§b本次签到获得§c"..cont.."§bGP")
      dput(name,"gSign","true")
    end
  end
end
Listen("onJoin","join")