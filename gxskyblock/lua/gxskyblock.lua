--------------------空岛初始化-----------------------------
event.Filter("LCMD","first",true,function(name)
    dput('kd1','kd1','false')
    dput('kd2','kd2','false')
    dput('kd3','kd3','false')
    sendText(name,"§e初始化成功！")
end)
----------------------打开文件----------------------------
function skyx()--获取x
    local file = io.open("gxPlugin/gxskyblock/local/x","r")
    local skyx = file:read("*a")
    file:close()
    return skyx
end
function skyy()--获取y
    local file = io.open("gxPlugin/gxskyblock/local/y","r")
    local skyy = file:read("*a")
    file:close()
    return skyy
end
function skyz()--获取z
    local file = io.open("gxPlugin/gxskyblock/local/z","r")
    local skyz = file:read("*a")
    file:close()
    return skyz
end
-----------------------------创建空岛------------------------
function clone()--创建空岛
    local x = skyx()
    local y = skyy()
    local z = skyz()
    runCmd('clone -8 0 7 5 16 -5 '..x..' '..y..' '..z..'')
end
event.Filter("LCMD","create",true,function(name,a)--创岛
    if dget(name,"dream1") == "true" then
        sendText(name,"§e[gxSkyBlock]§c你已经领过岛屿或者已加入他人岛屿")
        else
            local jl = math.random(1800,3600)
            local x = skyx()
            local z = skyz()
            local xx = x + jl
            local xx = string.format("%d",xx)
            filess = io.open("gxPlugin/gxskyblock/local/x","w")
            filess:write(xx)
            filess:close()
            local zz = z + jl
            local zz = string.format("%d",zz)
            filesss = io.open("gxPlugin/gxskyblock/local/z","w")
            filesss:write(zz)
            filesss:close()
            local x = skyx()
            local y = skyy()
            local z = skyz()
            local skyx = x + 6
            local skyy = y + 8
            local skyz = z + 6
            runCmd('tp '..name..' '..skyx..' '..skyy..' '..skyz..'')
            runCmd('spawnpoint '..name..' '..skyx..' '..skyy..' '..skyz..'')
            schedule("clone",0,1)
            local zb = string.format("%d %d %d",skyx,skyy,skyz)
            file = io.open('gxPlugin/gxskyblock/players/Owner-'..name..'.json',"w+")
            local msg = string.format('{\n\"name\":["%s"],\n\"locals\":["%s"]\n}',name,zb)
            file:write(msg)
            file:close()
            dput(name,"dream1","true")
            dput(name,''..name..'','true')
            sendText(name,"§e[gxSkyBlock]§6创建空岛成功！")
    end
return -1
end)
--------------------------------------删除空岛-----------------------------------
event.Filter("LCMD","del",true,function(name,a)--删岛
    if dget('kd1',"kd1") == "false" then
        dput('kd1','kd1','true')
        if dget(name,"dream1") == "true" then
            sendText(name,"§e[gxSkyBlock]§6你确认要删除你的空岛吗，确定输入/l confirm，取消输入/l exit，你一共有15秒的时间考虑！")
            dput(name,"confirm1","true")
            schedule("delconfirm",0,30)
            kdkdname = name
        else
            sendText(name,"§e[gxSkyBlock]§c你还没有空岛！")
            dput('kd1','kd1','false')
        end
    else
        sendText(name,"§e[gxSkyBlock]§c有人正在删除空岛，请稍后再试或者使用GUI版！")
    end
return -1
end)
function delconfirm()--超时处理
    if dget(kdkdname,"confirm1") == "true" then
        dput(kdkdname,"confirm1","false")
        dput('kd1','kd1','false')
        sendText(kdkdname,"§e[gxSkyBlock]§c请求超时")
    end
end
function scxt(name,cmd)--删岛确认
    if dget(name,"confirm1") == "true" then
        if cmd == "l confirm" then
            sendText(name,"§e[gxSkyBlock]§6删除空岛成功！")
            runCmd('tp '..name..' 0 64 0')
            runCmd('spwanponit 0 64 0')
            os.remove('gxPlugin/gxskyblock/players/Owner-'..name..'.json')
            dput(name,"dream1","false")
            dput(name,"confirm1","false")
            dput('kd1','kd1','false')
            ddel(name,''..name..'')
        return -1
        else
            if cmd == "l exit" then
                sendText(name,"§e[gxSkyBlock]§6取消删除！")
                dput(name,"confirm1","false")
                dput('kd1','kd1','false')
                return -1
             end
        end
    elseif cmd == "l confirm" then
        sendText(name,'§e[gxSkyBlock]§9没有待确认项目！')
        elseif cmd == "l exit" then
            sendText(name,'§e[gxSkyBlock]§9没有待确认项目！')
    end
end
Listen("onCMD","scxt")
--------------------------------信任系统----------------------------------
event.Filter("LCMD","trust",true,function(name,a)--信任玩家
    trustowners = name
    ttwjplayer = a
    if dget('kd2',"kd2") == "false" then
        dput('kd2','kd2','true') 
        if dget(name,"dream1") == "true" then
            if string.find(a,name,1) == nil then
                if runCmdEx('testfor '..a..'') == true then
                    sendText(a,'§e[gxSkyBlock]§6玩家'..name..'邀请你加入他的岛！接受:/l accppt,拒绝:/l deny，你一共有15秒的时间考虑')
                    sendText(name,'§e[gxSkyBlock]§2邀请已发送')
                    schedule("delplayertrust",0,30)
                    dput(a,"playertrust","true")
                elseif runCmdEx('testfor '..a..'') == false then
                    sendText(name,'§e[gxSkyBlock]§c玩家不存在或离线！')
                    dput('kd2','kd2','false')
                end
            else
                sendText(name,'§e[gxSkyBlock]§2为什么邀请自己？')
                dput('kd2','kd2','false')
            end
        else
            sendText(name,'§e[gxSkyBlock]§c你还没有空岛！')
            dput('kd2','kd2','false')
        end
    else
        sendText(name,"§e[gxSkyBlock]§c有人正在进行邀请，请稍后再试或者使用GUI版！")
    end
return -1
end)
function trustwj()--打开主人json
    local file = io.open('gxPlugin/gxskyblock/players/Owner-'..trustowners..'.json',"r")
    local json = file:read("*a")
    file:close()
    return json
end
function ttwj(name,cmd)--确认系统
    if dget(name,"playertrust") == "true" then
        if cmd == "l accept" then
            sendText(name,'§e[gxSkyBlock]§a成功接受来自§5'..trustowners..'§a邀请！')
            dput(name,"playertrust","false")
            dput(name,"dream1","true")
            runCmdAs(trustowners,'land trust '..name..'')
            local cj =require("cjson")
            local fileconfig = trustwj()
            local json = cj.decode(fileconfig)
            for de,ed in ipairs(json.locals) do
            file = io.open('gxPlugin/gxskyblock/players/Member-'..name..'.json',"w+")
            local msg = string.format('{\n\"name\":["%s"],\n\"locals\":["%s"],\n\"owners\":["%s"]\n}',name,ed,trustowners)
            file:write(msg)
            runCmd('tp '..name..' '..ed..'')
            file:close()
            dput('kd2','kd2','false')
            dput(name,''..trustowners..'','true')
            end
        else
           if cmd == "l deny" then
                sendText(name,'§e[gxSkyBlock]§c成功拒绝来自§5'..trustowners..'§c邀请！')
                sendText(trustowners,'§e[gxSkyBlock]§c玩家§5'..name..'§c已拒绝你的邀请')
                dput(name,"playertrust","false")
                dput('kd2','kd2','false')
                return -1
            end
        end
    elseif cmd == "l accept" then
        sendText(name,'§e[gxSkyBlock]§9没有待确认项目！')
        elseif cmd == "l deny" then
            sendText(name,'§e[gxSkyBlock]§9没有待确认项目！')
    end
end
Listen("onCMD","ttwj")
function delplayertrust()--超时系统
    if dget(ttwjplayer,"playertrust") == "true" then
       dput(ttwjplayer,"playertrust","false")
       sendText(trustowners,'§e[gxSkyBlock]§c请求超时')
       sendText(ttwjplayer,'§e[gxSkyBlock]§c请求超时')
       dput('kd2','kd2','false')
    end
end
-------------------------移除权限系统--------------------------------
event.Filter("LCMD","untrust",true,function(name,a)--不信任玩家
    untrustowner = name
    untrustplayer = a
    if dget('kd3',"kd3") == "false" then
        dput('kd3','kd3','true') 
        if dget(name,"dream1") == "true" then 
            local ret, errormsg = io.open('gxPlugin/gxskyblock/players/Member-'..untrustplayer..'.json', "r")
            if ret == nil then
               sendText(name,'§e[gxSkyBlock]§c玩家'..a..'不存在！')
               dput('kd3','kd3','false') 
            else
                if dget(untrustplayer,''..name..'') == "true" then 
                    sendText(name,'§e[gxSkyBlock]§6是否移除玩家'..name..'从你的岛屿成员中！确认:/l yes,取消:/l no，你一共有15秒的时间考虑')
                    dput(name,"playeruntrust","true")
                    dput('kd3','kd3','false')
                else
                    sendText(name,'§e[gxSkyBlock]§c玩家'..a..'不在你的岛屿成员中！')
                    end
            end
        else
            sendText(name,'§e[gxSkyBlock]§c你还没有空岛！')
            dput('kd3','kd3','false')
        end
    else
        sendText(name,"§e[gxSkyBlock]§c有人正在进行删人，请稍后再试或者使用GUI版！")
    end
return -1
end)
function unttwj(name,cmd)--确认系统
    if dget(name,"playeruntrust") == "true" then
        if  cmd  == 'l yes' then
            sendText(name,'§e[gxSkyBlock]§a成功把§5'..untrustplayer..'§a移除岛屿！')
            dput(name,"playeruntrust","false")
            os.remove('gxPlugin/gxskyblock/players/Member-'..untrustplayer..'.json')
            runCmdAs(trustowners,'land untrust '..name..'')
            dput(untrustplayer,"dream1","false")
            runCmd('tp '..untrustplayer..' 0 64 0')
            runCmd('spawnpoint '..untrustplayer..' 0 64 0')
            dput('kd3','kd3','false')
            ddel(name,''..untrustowner..'')
        elseif cmd == "l no" then
            sendText(name,'§e[gxSkyBlock]§a取消成功！！')
            dput(name,"playeruntrust","false")
            chedule("delplayeruntrust",0,30)
            dput('kd3','kd3','false')
        end
    elseif cmd  == 'l yes' then
        sendText(name,'§e[gxSkyBlock]§9没有待确认项目！')
        elseif cmd == "l no" then
            sendText(name,'§e[gxSkyBlock]§9没有待确认项目！')
    end
end
Listen("onCMD","unttwj")
function delplayeruntrust()--超时系统
    if dget(untrustowner,"playeruntrust") == "true" then
        dput(untrustowner,"playertrust","false")
        sendText(untrustowner,'§e[gxSkyBlock]§c请求超时')
        dput('kd3','kd3','false')
    end
end
-----------------------回岛系统-------------------------
function trustwj2(name)
    local file = io.open('gxPlugin/gxskyblock/players/Owner-'..name..'.json',"r")
    local json = file:read("*a")
    file:close()
    return json
end
function trustwj1(name)
    local file = io.open('gxPlugin/gxskyblock/players/Member-'..name..'.json',"r")
    local json = file:read("*a")
    file:close()
    return json
end
event.Filter("LCMD","go",true,function(name,a)
     if dget(name,"dream1") == "true" then
         if  dget(name,''..name..'') == "true" then
             local ret, errormsg = io.open('gxPlugin/gxskyblock/players/Owners-'..name..'.json', "r")
             if ret == nil then
                  local cj =require("cjson")
                  local fileconfig = trustwj2(name)
                  local json = cj.decode(fileconfig)
                  for de,ed in ipairs(json.locals) do
                      runCmd('tp '..name..' '..ed..'')
                      sendText(name,'§e[gxSkyBlock]§e返回空岛')
                  end
                else
                    sendText(name,'§e[gxSkyBlock]§4出错，请联系管理员！')
                end
         else
             local ret, errormsg = io.open('gxPlugin/gxskyblock/players/Member-'..name..'.json', "r")
             if errormsg == nil then
                 local cj =require("cjson")
                 local fileconfig = trustwj1(name)
                 local json = cj.decode(fileconfig)
                 for de,ed1 in ipairs(json.locals) do
                     runCmd('tp '..name..' '..ed1..'')
                     sendText(name,'§e[gxSkyBlock]§e返回空岛')
                 end
                 else
                    sendText(name,'§e[gxSkyBlock]§4出错，请联系管理员！')
                 end
          end
     else
        sendText(name,'§e[gxSkyBlock]§c你还没有空岛！')
    end
end)
-----------------------成员列表----------------------------
