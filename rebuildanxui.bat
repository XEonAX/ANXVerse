java  -jar "..\ANXVerseTools\apktool-cli-all.jar" b -p ..\ANXVerseTools\MiuiFrameworks -o .\out\anxui-Unaligned.apk .\src\ANXFramework12\anxui\src
..\ANXVerseTools\zipalign.exe -p -f 4  .\out\anxui-Unaligned.apk .\out\anxui-Unsigned.apk
..\ANXVerseTools\apksigner.bat sign -v --key ..\ANXVerseTools\testkey.pk8 --cert ..\ANXVerseTools\testkey.x509.pem  --in .\out\anxui-Unsigned.apk --out .\out\anxui.apk

adb install .\out\anxui.apk

