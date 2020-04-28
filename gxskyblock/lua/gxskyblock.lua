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
function clone(name)
    local x = skyx()
    local y = skyy()
    local z = skyz()
    print(x)
    print(z)
    runCmd('clone -8 1 7 5 16 -5 '..x..' '..y..' '..z..'')
end

event.Filter("CMD","kd create",true,function(name,a)
    if dget(name,"ceshi111r132") == "true" then
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
            local files = io.open("gxPlugin/gxskyblock/skyblcoklist.json","a+")
            local zb = string.format("%d %d %d",skyx,skyy,skyz)
            local file = io.open("gxPlugin/gxskyblock/skyblcoklist.json","r+")
            local content = file:read("*a")
            local q = string.format("%s","}")
            local contentlen = string.len(content)
            local tlen = string.len(q)
            file:close()
            local s_len = contentlen - tlen - 1
            local str = string.sub(content,0,s_len)
            file = io.open("gxPlugin/gxskyblock/skyblcoklist.json","w")
            file:write(str)
            file:close()
            local files = io.open("gxPlugin/gxskyblock/skyblcoklist.json","a+")
            local msg = string.format(",\n\"%s\":[\"%s\"]\n}",name,zb)
            files:write(msg)
            files:close()
            dput(name,"ceshi11111132","true")
            sendText(name,"§6创建空岛成功！")
    end
return -1
end)