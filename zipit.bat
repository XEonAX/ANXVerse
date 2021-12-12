xcopy /s /y .\out\ANXCamera.apk .\src\ANXVerse\system\priv-app\ANXCamera\
xcopy /s /y .\src\ANXCamera12\frida\ANXCamera.json .\src\ANXVerse\system\priv-app\ANXCamera\lib\arm64\libanx.config.so
xcopy /s /y .\src\ANXCamera12\frida\anx.js .\src\ANXVerse\system\etc\ANXCamera\anx.js

xcopy /s /y .\out\anxui.apk .\src\ANXVerse\system\app\anxui\anxui.apk

del .\out\ANXVerse.zip
del .\out\ANXVerse_*.zip
del .\out\ANXCamera_*.zip

for /f "delims== tokens=1,2" %%G in (VERSION) do set anx%%G=%%H
echo %anxversion%

"G:\Program Files\7-Zip\7z.exe" a -tzip .\out\ANXVerse.zip .\src\ANXVerse\*
adb push .\out\ANXVerse.zip  /sdcard/zips/

copy .\out\ANXVerse.zip /B .\out\ANXCamera_%anxversion%.zip