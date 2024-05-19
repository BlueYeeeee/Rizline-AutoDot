require("point")

restartflag=0
path= getSdPath().."/rizline.txt"
if fileExist(path)==false then--写文件，文件不存在则创建初始化文件
	writeFile(path,"{\"server\":\"1\",\"target\":\"0\",\"get\":\"0\"}" ,false)
end
uisetfile=readFile(path)
--打开界面并加载配置
function onLoadEvent(handle)
	setUIConfig(handle,uisetfile)
end
if restartflag==0 then
	action,arr = showUI("in.ui",800,600,onLoadEvent);
end


flag=0
restime=0
breakflag=false
canjudge=false
function main()
	--保存配置
    console.dismiss()
	txt = "\"server\":\""..arr["server"].."\",".."\"target\":\""..arr["target"].."\",".."\"get\":\""..get.."\""
	writeFile(path,"{"..txt.."}" ,false)
    getold=false
    if math.tointeger(get)>math.tointeger(arr["target"]) then
        console.println(3,"达到设定Dot值，结束")
        console.show()
        flag=1
        exitScript()
    end
	while cmpColorEx(接下来,0.9)==0 do
		tap(638,364)
		sleep(200)
        if cmpColorEx(溢出,0.9)==1 then
        	console.println(3,"Dot溢出，结束")
            flag=1
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
        sleep(2945)
    end
    
	
	playsong()
    toast("judging acc")
    judgeacc()
    writeLog(get)
end

function playsong()
	sleep(8140)
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
	sleep(1580)
	tap(638,364)
	sleep(1580)
	tap(638,364)
	sleep(1600)
	tap(638,364)
	sleep(1670)
	touchDown(1,638,364)
    if cmpColorEx(血条,0.9)==0 then
    	touchUp(1)
        swipe(260,379,520,362,100)
        sleep(200)
        swipe(520,362,1020,362,100)
        restime=restime+1
        toast("血不够打完，直接重开",0,0,12)
        breakflag=true
        sleep(2000)
    else
	sleep(26878)
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
	sleep(1600)
	touchUp(1)
	touchDown(1,638,364)
	sleep(1600)
	touchUp(1)
	touchDown(1,638,364)
	sleep(1600)
	touchUp(1)
	touchDown(1,638,364)
	sleep(2540)
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
	sleep(800)
	tap(638,364)
	sleep(800)
	tap(638,364)
	sleep(1600)
	tap(638,364)
	sleep(800)
	tap(638,364)
	sleep(800)
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
    canjudge=true
   	end
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
    if canjudge then
    	getold=true
    end
    
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
	local tid=beginThread(main)
    	while true do
    		if cmpColorEx(失败,0.95)==1 then
    				stopThread(tid)
                    toast("本次游玩失败，正在重开",0,0,12)
                    console.println(3,"本次游玩失败，正在重开")
                    restime=restime+1
                    if restime ==3 then
                    	sleep(200)
                    	toast("失败次数过多，请求手动重启",0,0,12)
                        console.println(3,"失败次数过多，请求手动重启")
                        break
                    end	
                    sleep(2000)
                    break
    		elseif getold then
            	sleep(5000)
            	toast("成功游玩",0,0,12)
                canjudge=false
                restime=0
            	break
            elseif flag==1 or breakflag then
                	stopThread(tid)
                	break
            elseif restime ==3 then
                sleep(200)
                toast("失败次数过多，请求手动重启",0,0,12)
                console.println(3,"失败次数过多，请求手动重启")
                break
            end
    	end
    if flag==1 or restime==3 then
    	stopThread(tid)
    	break
    end
end
if restime==3 then
	restime=0
    restartflag=1
    restartScript()
    
else
	exitScript()
end
