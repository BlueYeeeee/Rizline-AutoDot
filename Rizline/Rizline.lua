require("point")

path= getSdPath().."/rizline.txt"
if fileExist(path)==false then--д�ļ����ļ��������򴴽���ʼ���ļ�
	writeFile(path,"{\"server\":\"1\",\"target\":\"0\",\"get\":\"0\"}" ,false)
end
uisetfile=readFile(path)
--�򿪽��沢��������
function onLoadEvent(handle)
	setUIConfig(handle,uisetfile)
end
action,arr = showUI("in.ui",800,600,onLoadEvent);

flag=0

function main()
	--��������
    console.dismiss()
	txt = "\"server\":\""..arr["server"].."\",".."\"target\":\""..arr["target"].."\",".."\"get\":\""..get.."\""
	writeFile(path,"{"..txt.."}" ,false)
    getold=false
    if math.tointeger(get)>math.tointeger(arr["target"]) then
        console.println(3,"�ﵽ�趨Dotֵ������")
        console.show()
        flag=1
        exitScript()
    end
	while cmpColorEx(������,0.9)==0 do
		tap(638,364)
		sleep(200)
        if cmpColorEx(���,0.9)==1 then
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
    	swipe(260,379,494,362,10)
    end
    
    sleep(1400)
    if cmpColorEx(����ͣ,0.9)==1 then
    	swipe(494,362,39,344,100)
    	toast("big pause",0,0,12)
    	sleep(2870)
    else
    	swipe(494,362,39,344,100)
        sleep(2940)
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
	sleep(1570)
	tap(638,364)
	sleep(1580)
	tap(638,364)
	sleep(1600)
	tap(638,364)
	sleep(1670)
	touchDown(1,638,364)
	sleep(26890)
	touchUp(1)
	sleep(310)
	---����߳���
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
    getold=true
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
    		if cmpColorEx(ʧ��,0.95)==1 then
    				stopThread(tid)
                    toast("��������ʧ�ܣ������ؿ�",0,0,12)
                    console.println(3,"��������ʧ�ܣ������ؿ�")
                    sleep(2000)
                    break
    		elseif getold then
            	sleep(5000)
            	toast("�ɹ�����",0,0,12)
            	break
            elseif flag==1 then
                	stopThread(tid)
                	break
                end
    	end
    if flag==1 then
    	stopThread(tid)
    	break
    end
end
exitScript()