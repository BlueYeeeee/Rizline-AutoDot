require("point")

path= getSdPath().."/rizline.txt"
if fileExist(path)==false then--写文件，文件不存在则创建初始化文件
	writeFile(path,"{\"server\":\"1\",\"target\":\"0\",\"get\":\"0\"}" ,false)
end
uisetfile=readFile(path)
--打开界面并加载配置
function onLoadEvent(handle)
	setUIConfig(handle,uisetfile)
end
action,arr = showUI("in.ui",800,600,onLoadEvent);



function main()
	--保存配置
    
	txt = "\"server\":\""..arr["server"].."\",".."\"target\":\""..arr["target"].."\",".."\"get\":\""..get.."\""
	writeFile(path,"{"..txt.."}" ,false)
    if math.tointeger(get)>math.tointeger(arr["target"]) then
    	exitScript()
        console.println(3,"结束")
    end
	while cmpColorEx(接下来,0.9)==0 do
		tap(638,364)
		sleep(200)
		if cmpColorEx(确定,0.9)==1 then
			tap(752,252)
			sleep(200)
		end
	end

    while cmpColorEx(暂停,0.9)==0 do
    	swipe(260,379,494,362,10)
    end
    sleep(1500)
    swipe(494,362,39,344,100)
    while cmpColorEx(暂停,0.9)==0 do
       sleep(1)
    end
	sleep(3000)
	playsong()
    toast("judging acc")
    judgeacc()
    writeLog(get)
	sleep(5000)
end

function playsong()
	sleep(8150)
	toast("start")
	tap(638,364)
	sleep(3200)
	tap(638,364)
	sleep(2850)
	tap(638,364)
	sleep(1570)
	tap(638,364)
	sleep(1570)
	tap(638,364)
	sleep(1580)
	tap(638,364)
	sleep(1570)
	tap(638,364)
	sleep(1580)
	tap(638,364)
	sleep(1600)
	tap(638,364)
	sleep(1690)
	touchDown(1,638,364)
	sleep(26870)
	touchUp(1)
	sleep(310)
	---进入高潮段
	touchDown(1,638,364)
	sleep(1600)
	touchUp(1)
	touchDown(1,638,364)
	sleep(1570)
	touchUp(1)
	touchDown(1,638,364)
	sleep(1600)
	touchUp(1)
	touchDown(1,638,364)
	sleep(1600)
	touchUp(1)
	touchDown(1,638,364)
	sleep(1580)
	touchUp(1)
	touchDown(1,638,364)
	sleep(1590)
	touchUp(1)
	touchDown(1,638,364)
	sleep(1600)
	touchUp(1)
	touchDown(1,638,364)
	sleep(2570)
	touchUp(1)
	---riztime phase 2
	sleep(618)
	toast("phase 2")
	touchDown(1,638,364)
	sleep(1600)
	touchUp(1)
	touchDown(1,638,364)
	sleep(1590)
	touchUp(1)
	touchDown(1,638,364)
	sleep(1600)
	touchUp(1)
	touchDown(1,638,364)
	sleep(1600)
	touchUp(1)
	touchDown(1,638,364)
	sleep(1580)
	touchUp(1)
	touchDown(1,638,364)
	sleep(14560)
	touchUp(1)
	toast("hold stopped")
	sleep(1400)
	tap(638,364)
	sleep(810)
	tap(638,364)
	sleep(810)
	tap(638,364)
	sleep(1600)
	tap(638,364)
	sleep(810)
	tap(638,364)
	sleep(810)
	tap(638,364)
	sleep(1600)
	touchDown(1,500,500)
	touchDown(2,600,600)
	touchUp(1)
	touchUp(2)
	sleep(1600)
	toast("two 1")
	touchDown(1,500,500)
	touchDown(2,600,600)
	touchUp(1)
	touchUp(2)
	sleep(1620)
	toast("two 2")
	touchDown(1,500,500)
	touchDown(2,600,600)
	sleep(3200)
	touchUp(1)
	touchUp(2)
end

function judgeacc()
	if cmpColorEx(acc120,0.9)==1 then
    	get=get+21
    elseif cmpColorEx(acc110,0.9)==1 then
        get=get+18
	elseif cmpColorEx(acc100,0.9)==1 then
        get=get+15
	elseif cmpColorEx(acc90,0.9)==1 then
    	get=get+12
    elseif cmpColorEx(acc80,0.9)==1 then
        get=get+9
    end
    print(get)
end
get=math.tointeger(arr["get"])
sleep(200)
if arr["server"]=="0" then
 runApp("com.PigeonGames.Rizline")
else
 runApp("com.leiting.ldgj")
end
setControlBarPosNew(0,1)
sleep(500)
while true do
	main()
end
