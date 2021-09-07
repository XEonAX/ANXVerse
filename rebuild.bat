java  -jar "C:\Projects\apktool\brut.apktool\apktool-cli\build\libs\apktool-cli-all.jar" b -p C:\Projects\ANXVerseTools\MiuiFrameworks -o .\out\ANXCamera-Unaligned.apk .\src\ANXCamera12\src
C:\Projects\ANXVerseTools\zipalign.exe -p -f 4  .\out\ANXCamera-Unaligned.apk .\out\ANXCamera-Unsigned.apk
C:\Projects\ANXVerseTools\apksigner.bat sign -v --key C:\Projects\ANXVerseTools\testkey.pk8 --cert C:\Projects\ANXVerseTools\testkey.x509.pem  --in .\out\ANXCamera-Unsigned.apk --out .\out\ANXCamera.apk

