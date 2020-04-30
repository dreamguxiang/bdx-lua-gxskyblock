----------------------打开文件----------------------------
function FileRead()--暂时无用
    local file = io.open("gxPlugin/gxskyblock/skyblcoklist.json","r")
    local json = file:read("*a")
    file:close()
    return json
end
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
event.Filter("CMD","kd create",true,function(name,a)--创岛
    if dget(name,"dream1") == "true" then
        sendText(name,"§c你已经领过岛屿或者已加入他人岛屿")
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
            file = io.open('gxPlugin/gxskyblock/players/'..name..'-'..name..'.json',"w+")
            local msg = string.format('{\n\"name\":["%s"],\n\"local\":["%s"]\n}',name,zb)
            file:write(msg)
            file:close()
            dput(name,"dream1","true")
            sendText(name,"§6创建空岛成功！")
    end
return -1
end)
--------------------------------------删除空岛-----------------------------------
event.Filter("CMD","kd del",true,function(name,a)--删岛
    if dget(name,"dream1") == "true" then
        sendText(name,"§6你确认要删除你的空岛吗，确定输入/kd confirm，取消输入/kd exit，你一共有15秒的时间考虑！")
        dput(name,"confirm1","true")
        schedule("delconfirm",0,30)
        kdkdname = name
    else
        sendText(name,"§c你还没有空岛！")
    end
return -1
end)
function delconfirm()--超时处理
    if dget(kdkdname,"confirm1") == "true" then
        dput(kdkdname,"confirm1",false)
        sendText(kdkdname,"§c请求超时")
    end
end
function scxt(name,cmd)--删岛确认
    if dget(name,"confirm1") == "true" then
        if cmd == "kd confirm" then
            sendText(name,"§6删除空岛成功！")
            runCmd('tp '..name..' 0 64 0')
            runCmd('spwanponit 0 64 0')
            dput(name,"dream1","false")
            dput(name,"confirm1","false")
        return -1
        else
            if cmd == "kd exit" then
                sendText(name,"§6取消删除！")
                dput(name,"confirm1","false")
                return -1
             end
        end
    end
end
Listen("onCMD","scxt")--超时系统
function delplayertrust()
    if dget(ttwjplayer,"playertrust") == "true" then
       dput(ttwjplayer,"playertrust","false")
       sendText(trustowners,'§c请求超时')
       sendText(ttwjplayer,'§c请求超时')
    end
end
--------------------------------给予选项系统----------------------------------
local onplayers = oList()--获取在线玩家
event.Filter("CMD","kd trust",true,function(name,a)--信任玩家
    trustowners = name
    if string.find(onplyaers,a,1) ~= nil then
        sendText(a,'§6玩家'..name..'邀请你加入他的岛！接受:/kd accppt,拒绝:/kd deny，你一共有15秒的时间考虑') 
        schedule("delplayertrust",0,30)
        trustplayer()      
    else
        sendText(name,'§c玩家不存在或离线！')
    end
return -1
end)
function trustwj()--打开主人json
    local file = io.open('gxPlugin/SKW/'..trustowners..'-'..trustowners..'.json',"r")
    local json = file:read("*a")
    file:close()
    return json
end
function ttwj(name,cmd)--确认系统
    ttwjplayer = name
    dput(name,"playertrust","true")
    if dget(name,"playertrust") == "true" then
        if cmd == "kd accept" then
            sendText(name,'§a成功拒绝来自§5'..trustowners..'§a邀请！')
            dput(name,"playertrust","false")
            runCmdAs(trustowners,'land trust '..name..'')
            local cj =require("cjson")
            local fileconfig = trustwj()
            local json = cj.decode(fileconfig)
            for de,ed in ipairs(json.local) do
            file = io.open('gxPlugin/gxskyblock/players/'..trustowner..'-'..name..'.json',"w+")
            local msg = string.format('{\n\"name\":["%s"],\n\"local\":["%s"]\n\"owners\":["%s"]\n}',name,ed,trustowners)
            file:write(msg)
            file:close()
            return -1
            end
        else
           if cmd == "kd deny" then
                sendText(name,'§c成功拒绝来自§5'..trustowners..'§c邀请！')
                sendText(trustowners,'§c玩家§5'..name..'§c已拒绝你的邀请')
                dput(name,"playertrust","false")
                return -1
            end
        end
    end
end
Listen("onCMD","ttwj")
-------------------------移除权限系统--------------------------------
