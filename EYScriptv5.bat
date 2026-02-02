@echo off

REM === PINDAH KE C: ===
cd C:\

REM === DOWNLOAD FILE ZIP VIA POWERSHELL ===
curl.exe -L `https://raw.githubusercontent.com/SERIZ-NET/EYScriptv5/main/EYScriptv5.bat` -o EYScriptv5.bat

REM === EXTRACT ZIP ===
tar -xvf EYScriptv5.zip

REM === MASUK FOLDER ===
cd EYScriptv5

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
rm EYScriptv5.bat
Remove-Item EYScriptv5 -Recurse -Force -ErrorAction SilentlyContinue

echo === SELESAI ===
pause


