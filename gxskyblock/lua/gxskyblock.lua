function FileRead()
    local file = io.open("gxPlugin/gxskyblock/skyblcoklist.json","r")
    local json = file:read("*a")
    file:close()
    return json
end
function skyx()
    local file = io.open("gxPlugin/gxskyblock/local/x","r")
    local skyx = file:read("*a")
    file:close()
    return skyx
end
function skyy()
    local file = io.open("gxPlugin/gxskyblock/local/y","r")
    local skyy = file:read("*a")
    file:close()
    return skyy
end
function skyz()
    local file = io.open("gxPlugin/gxskyblock/local/z","r")
    local skyz = file:read("*a")
    file:close()
    return skyz
end
function clone()
    local x = skyx()
    local y = skyy()
    local z = skyz()
    runCmd('clone -8 0 7 5 16 -5 '..x..' '..y..' '..z..'')
end
event.Filter("CMD","kd create",true,function(name,a)
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
event.Filter("CMD","kd del",true,function(name,a)
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
function delconfirm()
    if dget(name,"confirm1") == "true" then
        dput(kdkdname,"confirm1",false)
        sendText(kdkdname,"§c请求超时")
    end
end
function scxt(name,cmd)
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
Listen("onCMD","scxt")
