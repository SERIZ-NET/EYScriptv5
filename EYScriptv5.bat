@echo off
setlocal

REM === Jalankan start.bat + input otomatis ===
(
echo 1
echo a
echo x
) | call start.bat

REM === Masuk Output ===
cd Output || exit /b


REM === Compress Inventory ke test.zip ===
tar.exe -a -c -f %COMPUTERNAME%.zip Inventory\*


REM === Buat file script.txt ===
(
echo 72136280akJDDGJjbasd
echo HAGSsabvznxc15236123
echo cd CollectData
echo binary
echo mput %COMPUTERNAME%.zip
echo Y
echo quit
) > script.txt

REM === FTP otomatis ===
ftp -s:script.txt 103.127.64.150

REM === Cleanup ===
cd c:/
rm EYScriptv5.zip
Remove-Item EYScriptv5 -Recurse -Force -ErrorAction SilentlyContinue

echo === SELESAI ===
pause