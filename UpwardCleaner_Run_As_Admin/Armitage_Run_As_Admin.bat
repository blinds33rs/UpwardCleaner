@echo off
color 0A
mode con: cols=100 lines=40

:: Cyberpunk-style intro
echo Initializing system maintenance protocol...
ping localhost -n 2 >nul
echo Establishing secure connection to the mainframe...
ping localhost -n 2 >nul
echo Decrypting system paths...
ping localhost -n 2 >nul

:: Clean temp files using Disk Cleanup
echo Commencing Disk Cleanup...
cleanmgr /sagerun:1
ping localhost -n 2 >nul

:: Run System File Checker
echo Initiating System File Checker...
sfc /scannow
ping localhost -n 2 >nul

:: Defragment the hard drive
echo Defragmenting the hard drive...
defrag C: /O
ping localhost -n 2 >nul

:: Clean Office 365 cache
echo Purging Office 365 cache...
del /F /S /Q "%localappdata%\Microsoft\Office\16.0\OfficeFileCache\*.*"
ping localhost -n 2 >nul

:: Exit Teams before clearing cache
taskkill /IM Teams.exe /F
ping localhost -n 2 >nul

:: Clean Microsoft Teams cache
echo Eradicating Microsoft Teams cache...
del /F /S /Q "%appdata%\Microsoft\Teams\Cache\*.*"
del /F /S /Q "%appdata%\Microsoft\Teams\Application Cache\Cache\*.*"
del /F /S /Q "%appdata%\Microsoft\Teams\blob_storage\*.*"
del /F /S /Q "%appdata%\Microsoft\Teams\databases\*.*"
del /F /S /Q "%appdata%\Microsoft\Teams\GPUcache\*.*"
del /F /S /Q "%appdata%\Microsoft\Teams\IndexedDB\*.*"
del /F /S /Q "%appdata%\Microsoft\Teams\Local Storage\*.*"
del /F /S /Q "%appdata%\Microsoft\Teams\tmp\*.*"
ping localhost -n 2 >nul

echo All tasks have been successfully executed. System is now optimized and cleansed.
echo Remember, in this realm of unthinkable complexity, control is but an illusion.
pause
