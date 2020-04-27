
function zhong(name)
        if dget(name,"zhong") == "true" then
            sendText(name,"§6请不要重复领取")
           else
            runCmd('give "'..name..'" clock 1 0')
              sendText(name,"§6领取成功！")
              dput(name,"zhong","true")
            end
          end
    