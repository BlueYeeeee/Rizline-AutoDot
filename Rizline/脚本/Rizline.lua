require("point")
require("puxiu")


path= getSdPath().."/rizline.txt"
if fileExist(path)==false then--写文件，文件不存在则创建初始化文件
	writeFile(path,"{\"server\":\"1\",\"Dotfull\":\"0\",\"notice\":\"0\",\"UID\":\"22\"}" ,false)
end
uisetfile=readFile(path)
--打开界面并加载配置
function onLoadEvent(handle)
	setUIConfig(handle,uisetfile)
end
action,arr = showUI("in.ui",800,600,onLoadEvent);
curplaytime=0

function main()
	--保存配置
    console.dismiss()
	txt = "\"server\":\""..arr["server"].."\",".."\"Dotfull\":\""..arr["Dotfull"].."\",".."\"notice\":\""..arr["notice"].."\",".."\"UID\":\""..arr["UID"].."\""
	writeFile(path,"{"..txt.."}" ,false)
    getold=false
	while cmpColorEx(接下来,0.9)==0 do
		tap(638,364)
                sleep(200)
        if cmpColorEx(溢出,0.9)==1 and math.tointeger(arr["Dotfull"])==0 then
        	console.println(3,"Dot溢出，结束")
            flag=1
            if math.tointeger(arr["notice"])==0 and (arr["UID"]=="22")==false then
    			发送内容="Dot已溢出"
                local 剩余时间 = 类_接口.微信推送(arr["UID"],发送内容)
                print(剩余时间)
            end
            console.show()
        	exitScript()
        end
        if math.tointeger(arr["lianda"])==0 and math.tointeger(arr["playtime"])==curplaytime then
			console.println(3,"达到设定游玩次数，结束")
            flag=1
				if math.tointeger(arr["notice"])==0 and (arr["UID"]=="22")==false then
    			发送内容="达到设定游玩次数"
                local 剩余时间 = 类_接口.微信推送(arr["UID"],发送内容)
                print(剩余时间)
            end
            console.show()
        	exitScript()
        end
		if cmpColorEx(确定,0.9)==1 then
			tap(752,252)
			sleep(200)
		end
	end

    while cmpColorEx(暂停,0.9)==0 do
    	swipe(260,379,520,362,10)
    end
    
    sleep(1400)
    if cmpColorEx(大暂停,0.95)==1 then
    	swipe(494,362,39,344,100)
    	toast("big pause",0,0,12)
    	sleep(2870)
    else
    	swipe(494,362,39,344,100)
        sleep(2900)
    end
    sleep(180)
	playsong()
    writeLog(get)
    curplaytime=curplaytime+1
    print(curplaytime)
end

function playsong()
	sleep(8140)
	toast("start")
	---tap(638,364)
    touchDown(1,638,364)
    sleep(500)
    touchUp(1)
	sleep(2700)
	touchDown(1,638,364)
    sleep(500)
    touchUp(1)
	sleep(2340)
	touchDown(1,638,364)
    sleep(500)
    touchUp(1)
	sleep(1065)
	touchDown(1,638,364)
    sleep(500)
    touchUp(1)
	sleep(1065)
	touchDown(1,638,364)
    sleep(500)
    touchUp(1)
	sleep(1095)
	touchDown(1,638,364)
    sleep(500)
    touchUp(1)
	sleep(1095)
	touchDown(1,638,364)
    sleep(300)
    touchUp(1)
	sleep(1280)
	touchDown(1,638,364)
    sleep(500)
    touchUp(1)
	sleep(1100)
	touchDown(1,638,364)
    sleep(500)
    touchUp(1)
	sleep(1170)
	touchDown(1,638,364)
    if cmpColorEx(血条,0.9)==0 then
    	touchUp(1)
        swipe(260,379,520,362,100)
        sleep(200)
        swipe(520,362,1020,362,100)
        toast("血不够打完，直接重开",0,0,12)
        sleep(2000)
    else
	sleep(26867)
	touchUp(1)
	sleep(270)
	---进入高潮段
	touchDown(1,638,364)
	sleep(1500)
	touchUp(1)
    sleep(100)
	touchDown(1,638,364)
	sleep(1470)
	touchUp(1)
    sleep(100)
	touchDown(1,638,364)
	sleep(1500)
	touchUp(1)
    sleep(100)
	touchDown(1,638,364)
	sleep(1500)
	touchUp(1)
    sleep(100)
	touchDown(1,638,364)
	sleep(1500)
	touchUp(1)
    sleep(100)
	touchDown(1,638,364)
	sleep(1500)
	touchUp(1)
    sleep(100)
	touchDown(1,638,364)
	sleep(1500)
	touchUp(1)
    sleep(100)
	touchDown(1,638,364)
	sleep(2540)
	touchUp(1)
	---riztime phase 2
    if cmpColorEx(血条Riztime,0.9)==0 then
    	touchUp(1)
        swipe(260,379,520,362,100)
        sleep(200)
        swipe(520,362,1020,362,100)
        toast("血不够打完，直接重开",0,0,12)
        sleep(2000)
    else
	sleep(615)
	toast("phase 2")
	touchDown(1,638,364)
	sleep(1500)
	touchUp(1)
    sleep(100)
	touchDown(1,638,364)
	sleep(1490)
	touchUp(1)
    sleep(100)
	touchDown(1,638,364)
	sleep(1500)
	touchUp(1)
    sleep(100)
	touchDown(1,638,364)
	sleep(1500)
	touchUp(1)
    sleep(100)
	touchDown(1,638,364)
	sleep(1480)
	touchUp(1)
    sleep(100)
	touchDown(1,638,364)
	sleep(14560)
	touchUp(1)
	toast("hold stopped")
	sleep(1400)
	touchDown(1,638,364)
    sleep(500)
    touchUp(1)
	sleep(300)
	touchDown(1,638,364)
    sleep(500)
    touchUp(1)
	sleep(300)
	touchDown(1,638,364)
    sleep(500)
    touchUp(1)
	sleep(1100)
	touchDown(1,638,364)
    sleep(500)
    touchUp(1)
	sleep(300)
	touchDown(1,638,364)
    sleep(500)
    touchUp(1)
	sleep(300)
	touchDown(1,638,364)
    sleep(500)
    touchUp(1)
	sleep(1100)
	touchDown(1,590,590)
	touchDown(2,700,700)
    sleep(500)
	touchUp(1)
	touchUp(2)
	sleep(1100)
	toast("two 1")
	touchDown(1,300,300)
	touchDown(2,800,800)
    sleep(500)
	touchUp(1)
	touchUp(2)
	sleep(1080)
	toast("two 2")
	touchDown(1,400,400)
	touchDown(2,780,780)
	sleep(3200)
	touchUp(1)
	touchUp(2)
    canjudge=true
   	end
    end
end


sleep(200)
if arr["server"]=="0" then
 runApp("com.PigeonGames.Rizline")
 servername="国际服"
else
 runApp("com.leiting.ldgj")
 servername="国服"
end
sleep(1000)
setControlBarPosNew(0,1)
sleep(500)

while true do
	main()
end
