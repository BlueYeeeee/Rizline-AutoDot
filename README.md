# Rizline-AutoDot
Rizline全自动打歌脚本，国服国际服通用<br>
需要打开模拟器的Root权限，并提供脚本索要的所有权限<br>
此脚本基于雷电模拟器开发，分别有雷电9.0版本和雷电7.1版本的脚本（因为二者取样方式并不相通）<br>
雷电9.0版本可以稳定运行，推荐优先使用第一个文件夹的版本，且目前只维护雷电9的版本<br>
雷电7.1版本因为停止维护导致无法使用，之后也不会提供打包后的APK，仅做留档备份<br>
此脚本没有做多分辨率适配，请不要将模拟器改成其他分辨率，或者在手机上运行！<br>
请在运行前登录好你的账号，并提前选中Pastel Lines EZ难度，这样脚本就可以直接无脑点击到该谱面并开始运行<br>
如果脚本无法正常运行，请自行修改point文件内的取色值。如果你在运行脚本的过程中产生了极大的延迟偏差，请自行调整游戏内延迟，即可解决问题<br>
~~由于识别有时存在延迟，如果经常在失败重开的话建议手动重启一次脚本<br>~~
模拟器一定要把分辨率设置成1280*720，最好改成2核2G，这样就和作者的模拟器配置一样了！<br>
如果您要多开请把极致多开关了，不然会因为取色差异导致识别失败<br>

# 脚本有什么功能？
1.识别谱面是否开始游玩<br>
2.~~游玩结束后识别该局获得的Dot（目前由于新版本未解锁Illegal Legacy会导致只获得一倍的Dot，会导致识别错误，目前还没修复）~~<br>
3.反复游玩Pastel Lines EZ难度<br>
4.游玩期间判断是否因识别问题导致游玩出错，并在中途重开（仅编写了两处）<br>
5.识别Dot是否溢出（Dot上限为2000）<br>
6.在脚本完成设定的任务时向您发送通知（需要自己会注册Wxpusher并订阅此链接https://wxpusher.zjiecode.com/wxuser/?type=1&id=1945#/follow）才能收到通知<br>

# 脚本是怎么写的？
此脚本基于lua语言，底层原理为像素点识别和模拟点击

# 脚本安全吗？
脚本100%无毒，请放心使用。但是不知道鸽游是否会因为使用模拟点击的脚本封号，故如果您的账号价值较高请谨慎使用

# 目前已知问题
1.屏幕刷新率不够高的话会导致脚本无法正常运行（作者屏幕刷新率为144hz和180hz，编译时在180hz测试）<br>
2.如果让脚本自己打开APP，而不是自己提前选中歌曲的话，存在APP会卡死在部分页面的问题<br>

# 不公开打包方法，请网上自行搜索
# 请勿大肆宣传，不然后果很严重
# 请不要试图用于盈利，可能会带来不可预测的后果！
