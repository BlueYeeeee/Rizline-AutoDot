require("point")

restartflag=0
path= getSdPath().."/rizline.txt"
if fileExist(path)==false then--д�ļ����ļ��������򴴽���ʼ���ļ�
	writeFile(path,"{\"server\":\"1\",\"target\":\"0\",\"get\":\"0\",\"Dotfull\":\"0\",\"Dottarget\":\"0\"}" ,false)
end
uisetfile=readFile(path)
--�򿪽��沢��������
function onLoadEvent(handle)
	setUIConfig(handle,uisetfile)
end
if restartflag==0 then
	action,arr = showUI("in.ui",800,600,onLoadEvent);
end


flag=0
restime=0
playtime=0
breakflag=false
canjudge=false
function main()
	--��������
    console.dismiss()
	txt = "\"server\":\""..arr["server"].."\",".."\"target\":\""..arr["target"].."\",".."\"get\":\""..get.."\",".."\"Dotfull\":\""..arr["Dotfull"].."\",".."\"Dottarget\":\""..arr["Dottarget"].."\""
	writeFile(path,"{"..txt.."}" ,false)
    getold=false
    if math.tointeger(get)>math.tointeger(arr["target"]) and math.tointeger(arr["Dottarget"])==0 then
        console.println(3,"�ﵽ�趨Dotֵ������")
        console.show()
        flag=1
        exitScript()
    end
    if playtime>0 then
    	while cmpColorEx(Dot�����ж�,0.9)==0 do
        	sleep(100)
        end
        judgeaccnew()
    end
	while cmpColorEx(������,0.9)==0 do
		tap(638,364)
                sleep(200)
        if cmpColorEx(���,0.9)==1 and math.tointeger(arr["Dotfull"])==0 then
        	console.println(3,"Dot���������")
            flag=1
            console.show()
        	exitScript()
        end
        
		if cmpColorEx(ȷ��,0.9)==1 then
			tap(752,252)
			sleep(200)
		end
	end

    while cmpColorEx(��ͣ,0.9)==0 do
    	swipe(260,379,520,362,10)
    end
    
    sleep(1400)
    if cmpColorEx(����ͣ,0.95)==1 then
    	swipe(494,362,39,344,100)
    	toast("big pause",0,0,12)
    	sleep(2870)
    else
    	swipe(494,362,39,344,100)
        sleep(2900)
    end
    sleep(180)
	
	playsong()
    ---toast("judging acc")
    ---judgeacc()
    writeLog(get)
    playtime=playtime+1
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
	sleep(2350)
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
	sleep(1090)
	touchDown(1,638,364)
    sleep(500)
    touchUp(1)
	sleep(1090)
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
    if cmpColorEx(Ѫ��,0.9)==0 then
    	touchUp(1)
        swipe(260,379,520,362,100)
        sleep(200)
        swipe(520,362,1020,362,100)
        restime=restime+1
        toast("Ѫ�������ֱ꣬���ؿ�",0,0,12)
        breakflag=true
        sleep(2000)
    else
	sleep(26867)
	touchUp(1)
	sleep(270)
	---����߳���
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
    if cmpColorEx(Ѫ��Riztime,0.9)==0 then
    	touchUp(1)
        swipe(260,379,520,362,100)
        sleep(200)
        swipe(520,362,1020,362,100)
        restime=restime+1
        toast("Ѫ�������ֱ꣬���ؿ�",0,0,12)
        breakflag=true
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

--function judgeaccnew()---�����°汾����dot��ȡ���ƣ�������дһ���µ�ʶ�𷽷�����ocr��֮���ٿ���)
--    sleep(1000)
--    local handle = createOcr("eng",2)--�ֿ��ļ���Ҫ������Դ�ļ���
--    if handle ~= nil then
--    	local text = ocrTextEx(handle,160,7,214,138)
--    	if text ~= nil then
--        	get=math.tointeger(text)
--    		print(text)
--            print(get)
--    	end
--    	releaseOcr(handle)
--    end
--    sleep(1000)
--end

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
---while true do
---	local tid=beginThread(main)
---    	while true do
---    		if cmpColorEx(ʧ��,0.95)==1 then
 ---   				stopThread(tid)
---                    toast("��������ʧ�ܣ������ؿ�",0,0,12)
---                    console.println(3,"��������ʧ�ܣ������ؿ�")
---                    restime=restime+1
---                    if restime ==3 then
---                    	sleep(200)
---                    	toast("ʧ�ܴ������࣬�����ֶ�����",0,0,12)
---                        console.println(3,"ʧ�ܴ������࣬�����ֶ�����")
---                        break
---                    end	
---                    sleep(2000)
---                    break
---    		elseif getold then
---            	sleep(5000)
---            	toast("�ɹ�����",0,0,12)
---                canjudge=false
---                restime=0
---            	break
---            elseif flag==1 or breakflag then
---                	breakflag=false
---                    stopThread(tid)
---                    sleep(2000)
---                	break
---            elseif restime ==3 then
---                sleep(200)
---                toast("ʧ�ܴ������࣬�����ֶ�����",0,0,12)
---                console.println(3,"ʧ�ܴ������࣬�����ֶ�����")
---                break
---            end
---    	end
---    if flag==1 or restime==3 then
---    	stopThread(tid)
---    	break
---    end
---end
---if restime==3 then
---	restime=0
---    restartflag=1
---    restartScript()
---    
---else
---	exitScript()
---end
