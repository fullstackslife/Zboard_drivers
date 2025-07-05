@echo off
echo =========================================
echo Installing SteelSeries Zboard Dev Driver
echo =========================================

REM Optional: Enable Test Signing Mode
bcdedit /set testsigning on

REM Install driver using pnputil
pnputil /add-driver driver\ZboardDriver.inf /install

echo Done.
pause 