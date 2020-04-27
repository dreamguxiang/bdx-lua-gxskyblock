--------------------SKE------------------------
local ret, errormsg = io.open("gxPlugin/SKW/config.json", "r")
if ret == nil then
    print("[error][SKW]缺失config.json，请确认gxPlugin/SKW文件夹中是否存在")
    print("[error][SKW]缺失config.json，请确认gxPlugin/SKW文件夹中是否存在")
    print("[error][SKW]缺失config.json，请确认gxPlugin/SKW文件夹中是否存在")
    print("[server]服务器已关闭")
    os.exit()
end
------------------读取config--------------
function FileRead3()
    local file = io.open("gxPlugin/SKW/config.json","r")
    local json = file:read("*a")
    file:close()
    return json
end
------------------聊天----------------
Listen("onChat",function(name,chat)
    local cjcj =require("cjson")
    local fileconfig = FileRead3()
    local jsons = cjcj.decode(fileconfig)
    for b,d in ipairs(jsons.chatstrictions) do
        if d == 1 then
            for p,q in ipairs(jsons.chatmode) do
                if q == 1 then
                    local cjcj =require("cjson")
                    local fileconfig = FileRead3()
                    local jsons = cjcj.decode(fileconfig)
                    for jt,ht in pairs(jsons.op) do
                        if string.find(ht,name,1) == nil then
                            local cj =require("cjson")
                            local file = FileRead3()
                            local json = cj.decode(file)
                            for i,v in ipairs(json.SKW) do
                                if string.find(chat,v,1) ~= nil then
                                    chat = string.gsub(chat,v,"***",10)
                                    bcText('<'..name..'> '..chat..'')
                                return -1
                                end
                            end
                        end
                    end
                else
                    if q == 2 then
                        for jr,hr in pairs(jsons.op) do
                            if string.find(hr,name,1) == nil then
                                local cj =require("cjson")
                                local file = FileRead3()
                                local json = cj.decode(file)
                                for i,v in ipairs(json.SKW) do
                                    if string.find(chat,v,1) ~= nil then
                                        sendText(name,"§c您输入的内容中含有违规词")
                                    return -1
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)
--------------指令--------------------
Listen("onCMD",function(name,cmd)
    local cjcj =require("cjson")
    local fileconfig = FileRead3()
    local jsons = cjcj.decode(fileconfig)
    for j,h in ipairs(jsons.commandstrictions) do
        if h == 1 then
            local cjcj =require("cjson")
            local fileconfig = FileRead3()
            local jsons = cjcj.decode(fileconfig)
            for zf,xf in ipairs(jsons.op) do
                if string.find(xf,name,1) == nil then
                    local cj =require("cjson")
                    local file = FileRead3()
                    local json = cj.decode(file)
                    for i,v in ipairs(json.SKW) do
                        if string.find(cmd,v,1) ~= nil then
                            sendText(name,"§c您输入的指令中含有违规词")
                        return -1
                        end
                    end
                end
            end
        end
    end
end)
------------游戏中编辑关键词--------------
event.Filter("LCMD","skw",true,function(name,a)
        local cjcj =require("cjson")
        local fileconfig = FileRead3()
        local jsons = cjcj.decode(fileconfig)
        for cf,bf in ipairs(jsons.op) do 
            if string.find(bf,name,1) ~= nil then
                local file = io.open("gxPlugin/SKW/config.json","r+")
                local content = file:read("*a")
                local q = string.format("%s","]}")
                local contentlen = string.len(content)
                local tlen = string.len(q)
                file:close()
                local s_len = contentlen - tlen - 1
                local str = string.sub(content,0,s_len)
                file = io.open("gxPlugin/SKW/config.json","w")
                file:write(str)
                file:close()
                local files = io.open("gxPlugin/SKW/config.json","a+")
                local msg = string.format(",\"%s\"\n]}",a)
                files:write(msg)
                files:close()
                sendText(name,"§6关键词添加成功")
             else
                sendText(name,"§4添加失败，您不在白名单内")
            end
        end
end)
--------------防刷屏----------------------
Listen("onChat",function(name,chat)
    local cjcj =require("cjson")
    local fileconfig = FileRead3()
    local jsons = cjcj.decode(fileconfig)
    for jf,hf in ipairs(jsons.chatrestrictions) do
        if hf == 1 then
            local cjcj =require("cjson")
            local fileconfig = FileRead3()
            local jsons = cjcj.decode(fileconfig)
            for c,n in ipairs(jsons.op) do        
                if string.find(n,name,1) == nil then
                    local chat = string.len(chat)
                    for k,l in ipairs(jsons.chatlength) do
                        if chat > l then
                            sendText(name,"§4您超出了可发送文字范围")
                        return -1
                        end
                    end
                end
            end
        end
    end
end)
--------------声明-----------------------
print("[SKW]关键词屏蔽已加载")
print("[SKW]欢迎使用SKW插件,版本：200423")
print("[SKW]作者：顾想，联系方式：166664660")
print("[SKW]请看完使用说明后，在gxPlugin/SKW/config.json下配置插件！")
