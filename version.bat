call ..\ANXVerseTools\versionizer.exe v=".\VERSION" incrementversionname=true incrementversion=true

..\ANXVerseTools\versionizer.exe v=".\VERSION" mm=".\src\ANXVerse\module.prop"

..\ANXVerseTools\versionizer.exe v=".\VERSION" am=".\src\ANXCamera12\src\AndroidManifest.xml"