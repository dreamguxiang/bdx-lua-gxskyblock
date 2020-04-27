function open_shop_ore_menu(name)--打开矿物商店
    GUI(name,"shop/shop_ore")
end

function shop_ore_menu(name,selected,text)--矿物商店
    if selected == 0 then
        GUI(name,"shop/ore/coal")
       elseif selected == 1 then
        GUI(name,"shop/ore/diamond")
       elseif selected == 2 then
        GUI(name,"shop/ore/gold")
       elseif selected == 3 then 
        GUI(name,"shop/ore/iron")
       elseif selected == 4 then
        GUI(name,"shop/ore/lapis")
       elseif selected == 5 then
        GUI(name,"shop/ore/redstone")
       elseif selected == 6 then
        GUI(name,"shop/ore/stone")
       elseif selected == 7 then
        GUI(name,"shop/ore/cobblestone")
    end
end

function shop_ore_coal(name,raw,data)--煤炭系统
    local price1 = string.format("%d",raw[2] * 4)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"coal 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的煤炭")
        end
    end
    local price2 = string.format("%d",raw[2] * 16)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"coal",number,0,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_ore_diamond(name,raw,data)--钻石系统
    local price1 = string.format("%d",raw[2] * 64)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"diamond 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的钻石")
        end
    end
    local price2 = string.format("%d",raw[2] * 256)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"diamond",number,0,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_ore_emerald(name,raw,data)--绿宝石系统(停用)
    local price1 = string.format("%d",raw[2] * 10)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"emerald 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的钻石")
        end
    end
    local price2 = string.format("%d",raw[2] * 20)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"emerald",number,0)
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_ore_gold(name,raw,data)--金矿系统
    local price1 = string.format("%d",raw[2] * 32)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"gold_ore 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的金矿")
        end
    end
    local price2 = string.format("%d",raw[2] * 128)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"gold_ingot",number,0,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_ore_iron(name,raw,data)--铁矿系统
    local price1 = string.format("%d",raw[2] * 16)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"iron_ore 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁矿")
        end
    end
    local price2 = string.format("%d",raw[2] * 64)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"iron_ingot",number,0,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_ore_lapis(name,raw,data)--青金石矿系统
    local price1 = string.format("%d",raw[2] * 48)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"dye 4",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的青金石")
        end
    end
    local price2 = string.format("%d",raw[2] * 48)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"dye",number,4,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_ore_redstone(name,raw,data)--红石矿系统
    local price1 = string.format("%d",raw[2] * 16)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"redstone 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的红石")
        end
    end
    local price2 = string.format("%d",raw[2] * 16)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"redstone",number,0,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end
------------------------农作物---------------------------
function open_shop_crop_menu(name)--打开农作物商店
    GUI(name,"shop/shop_crop")
end

function shop_crop_menu(name,selected,text)--农作物商店
    if selected == 0 then
        GUI(name,"shop/crop/wheat")
       elseif selected == 1 then
        GUI(name,"shop/crop/melon")
       elseif selected == 2 then
        GUI(name,"shop/crop/pumpkin")
       elseif selected == 3 then
        GUI(name,"shop/crop/potato")
       elseif selected == 4 then
        GUI(name,"shop/crop/carrot")
       elseif selected == 5 then
        GUI(name,"shop/crop/cocoa_bean")
       elseif selected == 6 then
        GUI(name,"shop/crop/beetroot")
       elseif selected == 7 then
        GUI(name,"shop/crop/nether_wart")
    end
end

function shop_crop_wheat(name,raw,data)--小麦系统
    local price1 = string.format("%d",raw[2] * 32)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"wheat 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的小麦")
        end
    end
    local price2 = string.format("%d",raw[2] * 32)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"wheat_seeds",number,0,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_crop_melon(name,raw,data)--西瓜系统
    local price1 = string.format("%d",raw[2] * 24)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"melon_block 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的西瓜")
        end
    end
    local price2 = string.format("%d",raw[2] * 6)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"melon",number,0,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_crop_pumpkin(name,raw,data)--南瓜系统
    local price1 = string.format("%d",raw[2] * 12)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"pumpkin 1",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的南瓜")
        end
    end
    local price2 = string.format("%d",raw[2] * 24)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"pumpkin",number,1,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_crop_potato(name,raw,data)--马铃薯系统
    local price1 = string.format("%d",raw[2] * 3)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"potato 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的马铃薯")
        end
    end
    local price2 = string.format("%d",raw[2] * 12)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"potato",number,0,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_crop_carrot(name,raw,data)--胡萝卜系统
    local price1 = string.format("%d",raw[2] * 3)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"carrot 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的胡萝卜")
        end
    end
    local price2 = string.format("%d",raw[2] * 12)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"carrot",number,0,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_crop_cocoa_bean(name,raw,data)--可可豆系统
    local price1 = string.format("%d",raw[2] * 2)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"dye 3",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的可可豆")
        end
    end
    local price2 = string.format("%d",raw[2] * 3)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"dye",number,3,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_crop_beetroot(name,raw,data)--甜菜根系统
    local price1 = string.format("%d",raw[2] * 12)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"beetroot 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的甜菜根")
        end
    end
    local price2 = string.format("%d",raw[2] * 28)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"beetroot_seeds",number,0,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_crop_nether_wart(name,raw,data)--下界疣系统
    local price1 = string.format("%d",raw[2] * 16)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"nether_wart 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的下界疣")
        end
    end
    local price2 = string.format("%d",raw[2] * 32)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"nether_wart",number,0,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end
--------------------------方块--------------------------
function open_shop_block_menu(name)--打开方块商店
    GUI(name,"shop/shop_block")
end

function shop_block_menu(name,selected,text)--方块商店
    if selected == 0 then
        GUI(name,"shop/block/stone")
       elseif selected == 1 then
        GUI(name,"shop/block/cobblestone")
       elseif selected == 2 then
        GUI(name,"shop/block/andesite")
       elseif selected == 3 then
        GUI(name,"shop/block/diorite")
       elseif selected == 4 then
        GUI(name,"shop/block/granite")
       elseif selected == 5 then
        GUI(name,"shop/block/clay")
       elseif selected == 6 then
        GUI(name,"shop/block/sand")
       elseif selected == 7 then
        GUI(name,"shop/block/gravel")
       elseif selected == 8 then
        GUI(name,"shop/block/log")
       elseif selected == 9 then
        GUI(name,"shop/block/terracotta")
       elseif selected == 10 then
        GUI(name,"shop/block/concrete")
    end
end
function shop_block_stone(name,raw,data)--石头系统
    local price1 = string.format("%d",raw[2] * 1)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"stone 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的石头")
        end
    end
    local price2 = string.format("%d",raw[2] * 2)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"stone",number,0,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_block_cobblestone(name,raw,data)--圆石系统
    local price1 = string.format("%d",raw[2] * 1)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"cobblestone 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的圆石")
        end
    end
    local price2 = string.format("%d",raw[2] * 2)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"cobblestone",number,0,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_block_andesite(name,raw,data)--安山岩系统
    local price1 = string.format("%d",raw[2] * 3)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"stone 5",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的安山岩")
        end
    end
    local price2 = string.format("%d",raw[2] * 4)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"stone",number,5,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_block_diorite(name,raw,data)--闪长岩系统
    local price1 = string.format("%d",raw[2] * 3)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"stone 3",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的闪长岩")
        end
    end
    local price2 = string.format("%d",raw[2] * 4)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"stone",number,3,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_block_granite(name,raw,data)--花岗岩系统
    local price1 = string.format("%d",raw[2] * 3)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"stone 1",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的花岗岩")
        end
    end
    local price2 = string.format("%d",raw[2] * 4)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"stone",number,1,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_block_clay(name,raw,data)--粘土系统
    local price1 = string.format("%d",raw[2] * 6)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"clay 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的粘土")
        end
    end
    local price2 = string.format("%d",raw[2] * 8)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"clay",number,0,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_block_sand(name,raw,data)--沙子系统
    if raw[1]==0 then--黄沙
        local price1 = string.format("%d",raw[3] * 1)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"sand 0",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的黄沙")
            end
        end
        local price2 = string.format("%d",raw[3] * 2)
              price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
                invapi.giveItem(name,"sand",number,0,{[1]="§l§e系统商店"})
                sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==1 then--红沙
        local price1 = string.format("%d",raw[3] * 1)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"sand 1",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的红沙")
            end
        end
        local price2 = string.format("%d",raw[3] * 2)
              price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
                invapi.giveItem(name,"sand",number,1,{[1]="§l§e系统商店"})
                sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
end

function shop_block_gravel(name,raw,data)--沙砾系统
    local price1 = string.format("%d",raw[2] * 3)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"gravel 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的沙砾")
        end
    end
    local price2 = string.format("%d",raw[2] * 4)
          price2=tonumber(price2)
	if raw[1]==1 then
        if rdMoney(name,price2) then
            invapi.giveItem(name,"gravel",number,0,{[1]="§l§e系统商店"})
            sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的铁币")
        end
	end
end

function shop_block_log(name,raw,data)--原木系统
    if raw[1]==0 then--橡木
        local price1 = string.format("%d",raw[3] * 4)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"log 0",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的橡木")
            end
        end
        local price2 = string.format("%d",raw[3] * 6)
              price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
                invapi.giveItem(name,"log",number,0,{[1]="§l§e系统商店"})
                sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==1 then--云山木
        local price1 = string.format("%d",raw[3] * 4)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"log 1",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的云山木")
            end
        end
        local price2 = string.format("%d",raw[3] * 6)
              price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
                invapi.giveItem(name,"log",number,1,{[1]="§l§e系统商店"})
                sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==2 then--白桦木
        local price1 = string.format("%d",raw[3] * 4)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"log 2",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的白桦木")
            end
        end
        local price2 = string.format("%d",raw[3] * 6)
              price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
                invapi.giveItem(name,"log",number,2,{[1]="§l§e系统商店"})
                sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==3 then--丛林木
        local price1 = string.format("%d",raw[3] * 4)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"log 3",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的丛林木")
            end
        end
        local price2 = string.format("%d",raw[3] * 6)
              price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
                invapi.giveItem(name,"log",number,3,{[1]="§l§e系统商店"})
                sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==4 then--合金欢木
        local price1 = string.format("%d",raw[3] * 4)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"log2 0",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的合金欢木")
            end
        end
        local price2 = string.format("%d",raw[3] * 6)
              price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
                invapi.giveItem(name,"log2",number,0,{[1]="§l§e系统商店"})
                sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==5 then--深色橡木
        local price1 = string.format("%d",raw[3] * 4)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"log2 1",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的深色橡木")
            end
        end
        local price2 = string.format("%d",raw[3] * 6)
              price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
                invapi.giveItem(name,"log2",number,1,{[1]="§l§e系统商店"})
                sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
end

function shop_block_terracotta(name,raw,data)--陶瓦系统
    if raw[1]==0 then--无色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"hardened_clay 0",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"hardened_clay",number,0,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==1 then--白色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"stained_hardened_clay 0",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的白色陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"stained_hardened_clay",number,0,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==2 then--橙色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"stained_hardened_clay 1",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的橙色陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"stained_hardened_clay",number,1,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==3 then--品红色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"stained_hardened_clay 2",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的品红色陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"stained_hardened_clay",number,2,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==4 then--淡蓝色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"stained_hardened_clay 3",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的淡蓝色陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"stained_hardened_clay",number,3,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==5 then--黄色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"stained_hardened_clay 4",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的黄色陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"stained_hardened_clay",number,4,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==6 then--黄绿色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"stained_hardened_clay 5",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的黄绿色陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"stained_hardened_clay",number,5,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==7 then--粉红色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"stained_hardened_clay 6",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的粉红色陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"stained_hardened_clay",number,6,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==8 then--灰色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"stained_hardened_clay 7",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的灰色陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"stained_hardened_clay",number,7,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==9 then--淡灰色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"stained_hardened_clay 8",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的淡灰色陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"stained_hardened_clay",number,8,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==10 then--青色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"stained_hardened_clay 9",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的青色陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"stained_hardened_clay",number,9,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==11 then--紫色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"stained_hardened_clay 10",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的紫色陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"stained_hardened_clay",number,10,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==12 then--蓝色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"stained_hardened_clay 11",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的蓝色陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"stained_hardened_clay",number,11,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==13 then--棕色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"stained_hardened_clay 12",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的棕色陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"stained_hardened_clay",number,12,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==14 then--绿色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"stained_hardened_clay 13",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的绿色陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"stained_hardened_clay",number,13,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==15 then--红色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"stained_hardened_clay 14",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的红色陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"stained_hardened_clay",number,14,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==16 then--黑色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"stained_hardened_clay 15",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的黑色陶瓦")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"stained_hardened_clay",number,15,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
end

function shop_block_concrete(name,raw,data)--陶瓦系统
    if raw[1]==0 then--白色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"concrete 0",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的白色混凝土")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"concrete",number,0,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==1 then--橙色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"concrete 1",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的橙色混凝土")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"concrete",number,1,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==2 then--品红色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"concrete 2",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的品红色混凝土")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"concrete",number,2,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==3 then--淡蓝色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"concrete 3",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的淡蓝色混凝土")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"concrete",number,3,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==4 then--黄色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"concrete 4",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的黄色混凝土")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"concrete",number,4,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==5 then--黄绿色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"concrete 5",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的黄绿色混凝土")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"concrete",number,5,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==6 then--粉红色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"concrete 6",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的粉红色混凝土")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"concrete",number,6,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==7 then--灰色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"concrete 7",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的灰色混凝土")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"concrete",number,7,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==8 then--淡灰色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"concrete 8",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的淡灰色混凝土")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"concrete",number,8,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==9 then--青色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"concrete 9",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的青色混凝土")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"concrete",number,9,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==10 then--紫色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"concrete 10",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的紫色混凝土")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"concrete",number,10,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==11 then--蓝色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"concrete 11",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的蓝色混凝土")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"concrete",number,11,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==12 then--棕色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"concrete 12",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的棕色混凝土")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"concrete",number,12,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==13 then--绿色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"concrete 13",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的绿色混凝土")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"concrete",number,13,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==14 then--红色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"concrete 14",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的红色混凝土")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"concrete",number,14,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
    if raw[1]==15 then--黑色
        local price1 = string.format("%d",raw[3] * 6)
        number = string.format("%d",raw[3])
        number=tonumber(number)
        price1=tonumber(price1)
        if raw[2]==0 then
            if safe_clear(name,"concrete 15",number) then
                addMoney(name,price1)
                sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的黑色混凝土")
            end
        end
            local price2 = string.format("%d",raw[3] * 8)
            price2=tonumber(price2)
        if raw[2]==1 then
            if rdMoney(name,price2) then
               invapi.giveItem(name,"concrete",number,15,{[1]="§l§e系统商店"})
               sendText(name,"§6购买成功，扣除§b"..price2.."§6铁币")
            return
            else
                sendText(name,"§4你没有足够的铁币")
            end
        end
    end
end
-------------------------掉落物商店--------------------------------
function open_shop_drops_menu(name)--打开矿物商店
    GUI(name,"shop/shop_drops")
end

function shop_drops_menu(name,selected,text)--掉落物商店
    if selected == 0 then
        GUI(name,"shop/drops/rotten_flesh")
       elseif selected == 1 then
        GUI(name,"shop/drops/bone")
       elseif selected == 2 then
        GUI(name,"shop/drops/string")
       elseif selected == 3 then 
        GUI(name,"shop/drops/gunpowder")
       elseif selected == 4 then
        GUI(name,"shop/drops/ender_pearl")
       elseif selected == 5 then
        GUI(name,"shop/drops/ghast_tear")
       elseif selected == 6 then
        GUI(name,"shop/drops/blaze_rod")
       elseif selected == 7 then
        GUI(name,"shop/drops/magma_cream")
       elseif selected == 8 then
        GUI(name,"shop/drops/phantom_membrane")
    end
end

function shop_drops_rotten_flesh(name,raw,data)--腐肉系统
    local price1 = string.format("%d",raw[2] * 1)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"rotten_flesh 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的腐肉")
        end
    end
end

function shop_drops_bone(name,raw,data)--骨头系统
    local price1 = string.format("%d",raw[2] * 1)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"bone 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的骨头")
        end
    end
end
function shop_drops_string(name,raw,data)--线系统
    local price1 = string.format("%d",raw[2] * 1)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"string 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的线")
        end
    end
end
function shop_drops_gunpowder(name,raw,data)--火药系统
    local price1 = string.format("%d",raw[2] * 2)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"gunpowder 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的火药")
        end
    end
end
function shop_drops_ender_pearl(name,raw,data)--末影珍珠系统
    local price1 = string.format("%d",raw[2] * 2)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"ender_pearl 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的末影珍珠")
        end
    end
end
function shop_drops_ghast_tear(name,raw,data)--恶魂之泪系统
    local price1 = string.format("%d",raw[2] * 3)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"ghast_tear 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的恶魂之泪")
        end
    end
end
function shop_drops_blaze_rod(name,raw,data)--烈焰棒系统
    local price1 = string.format("%d",raw[2] * 3)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"blaze_rod 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的烈焰棒")
        end
    end
end
function shop_drops_magma_cream(name,raw,data)--岩浆膏系统
    local price1 = string.format("%d",raw[2] * 2)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"magma_cream 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的岩浆膏")
        end
    end
end

function shop_drops_phantom_membrane(name,raw,data)--岩浆膏系统
    local price1 = string.format("%d",raw[2] * 4)
          number = string.format("%d",raw[2])
          number=tonumber(number)
          price1=tonumber(price1)
    if raw[1]==0 then
        if safe_clear(name,"phantom_membrane 0",number) then
            addMoney(name,price1)
            sendText(name,"§6回收成功，获得§b"..price1.."§6铁币")
        return
        else
            sendText(name,"§4你没有足够的幻翼膜")
        end
    end
end