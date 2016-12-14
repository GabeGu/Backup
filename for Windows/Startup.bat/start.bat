@echo off 

::设置环境变量
set path=%path%;C:\Program Files\Internet Explorer 

::开始启动
echo changing wallpaper...
reg add "hkcu\control panel\desktop" /v wallpaper /d "E:\Photo\wallPaper.jpg" /f 
RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters
RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters
RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters

echo starting TXT...
start "" "E:\Program Files\Tencent\RTXC\RTX.exe"
@ping 127.0.0.1 -n 3 >nul

echo starting WeChat...
start "" "E:\Program Files\Tencent\WeChat\WeChat.exe"
@ping 127.0.0.1 -n 3 >nul

echo starting YouDao...
start "" "E:\Program Files\Youdao\YoudaoNote\YoudaoNote.exe"
@ping 127.0.0.1 -n 3 >nul

echo starting Everything...
start "" "E:\Program Files\Everything\Everything.exe"
@ping 127.0.0.1 -n 3 >nul

echo starting YodaoDict...
start "" "E:\Program Files\Dict\YodaoDict.exe"
@ping 127.0.0.1 -n 3 >nul

echo starting IAR for 430...
start "" "E:\Program Files\IAR Systems\Embedded Workbench 6.0 Evaluation\common\bin\IarIdePm.exe"
@ping 127.0.0.1 -n 3 >nul

echo starting IAR for arm...
start "" "E:\Program Files\IAR Systems\Embedded Workbench 6.0_ARM\common\bin\IarIdePm.exe"
@ping 127.0.0.1 -n 3 >nul

echo opening AUX oa...
start iexplore.exe http://sso.auxgroup.com/login?service=http://100.100.100.52/ekp/
@ping 127.0.0.1 -n 3 >nul

echo opening FIS3.0...
start explorer.exe http://100.100.100.71/sanxing/techcomp/security/loginProcessor!begin.action

echo done...
pause
