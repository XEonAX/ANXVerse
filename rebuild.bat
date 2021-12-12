java  -jar "..\ANXVerseTools\apktool-cli-all.jar" b -p ..\ANXVerseTools\MiuiFrameworks -o .\out\ANXCamera-Unaligned.apk .\src\ANXCamera12\src
..\ANXVerseTools\zipalign.exe -p -f 4  .\out\ANXCamera-Unaligned.apk .\out\ANXCamera-Unsigned.apk
..\ANXVerseTools\apksigner.bat sign -v --key ..\ANXVerseTools\testkey.pk8 --cert ..\ANXVerseTools\testkey.x509.pem  --in .\out\ANXCamera-Unsigned.apk --out .\out\ANXCamera.apk


adb push .\out\ANXCamera.apk  /sdcard/apks/
