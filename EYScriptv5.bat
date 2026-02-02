@echo off

REM === PINDAH KE C: ===
cd C:\

REM === EXTRACT ZIP ===
tar -xvf EYScriptv5.zip

REM === Cleanup ===
cd c:/
del EYScriptv5.zip
del EYScriptv5.bat

echo === SELESAI ===
pause












