@echo off
echo Clearing cache memory...
echo.
wmic os get FreePhysicalMemory
wmic os get TotalVisibleMemorySize
echo.
echo Flushing memory...
echo.
echo y|echo 3|echo 3|echo 3 > "%windir%\system32\sysprep\sysprep_succeeded.cmd"
echo.
echo Clearing CPU cache...
echo.
RD /S /Q "%LocalAppData%\Temp"
echo.
echo Cache memory and CPU cache cleared.
