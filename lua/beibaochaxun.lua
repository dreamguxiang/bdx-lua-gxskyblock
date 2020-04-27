function invecheckGUI(name,raw,rawdata)--查背包
    cbb = string.format('%s',rawdata[2])
    if raw[1]==0 then
        sendText(name,"§6§l以下为§c"..cbb.."§6的背包")
        sendText(name,invapi.dumpInv(cbb,0))
        Log("玩家"..name.."查询了"..cbb.."的背包")
        return
    end
    if raw[1]==1 then
        sendText(name,"§6§l以下为§c"..cbb.."§6的末影箱")        
        sendText(name,invapi.dumpInv(cbb,1))
        Log("玩家"..name.."查询了"..cbb.."的末影箱")
        return
    end
end
function FileRead3()
  local file = io.open("gxPlugin/SKW/config.json","r")
  local json = file:read("*a")
  file:close()
  return json
end
event.Filter("CMD","inv",true,function(name,a)--指令打开查背包菜单
  local cjcj =require("cjson")
  local fileconfig = FileRead3()
  local jsons = cjcj.decode(fileconfig)
  for cf,bf in ipairs(jsons.op) do 
    if string.find(bf,name,1) ~= nil then
    GUI(name,"chabeibao")
    sendText(name,"§6打开查背包菜单成功")
    return -1
    end
  end
end)

