@echo off
echo ------------------------------------------------------
echo     KiaraGale's Sonic Mania Windows Build Helper
echo ------------------------------------------------------
echo.
echo                                                  WARNING:
echo.
echo Before continuing, please consult the guide at https://github.com/Kiaru-the-Fox/Sonic-Mania-Windows-Build-Guide/
echo.
pause
echo.
goto isitstillthere

:isitstillthere
echo Checking for existing folder... 
echo.
if exist "%USERPROFILE%"\Documents\Sonic-Mania-PC-Build\ (
  echo Existing Folder being deleted, this should take about 15 seconds...
  rmdir /s /q "%USERPROFILE%"\Documents\Sonic-Mania-PC-Build\
  c:\WINDOWS\System32\timeout.exe /t 15 /nobreak > NUL
  echo.
  echo Folder should be deleted, continuing...
) else (
  echo Existing folder doesn't exist, continuing...
)
echo.
goto preferences

:preferences
set extraslotamy=n
set /p extraslotamy=Build with Extra Slot Amy support? (y/n; default is n) 
cls
goto clone

:clone
git clone https://github.com/Rubberduckycooly/Sonic-Mania-Decompilation.git "%USERPROFILE%"\Documents\Sonic-Mania-PC-Build\Sonic-Mania-Decompilation
git clone https://github.com/Rubberduckycooly/RSDKv5-Decompilation.git "%USERPROFILE%"\Documents\Sonic-Mania-PC-Build\RSDKv5-Decompilation --recursive
echo Cloning done.
cls
goto dependencies

:dependencies
cd "%USERPROFILE%"\Documents\Sonic-Mania-PC-Build\RSDKv5-Decompilation\dependencies\windows
curl -L http://downloads.xiph.org/releases/theora/libtheora-1.2.0alpha1.zip --output libtheora.zip
curl -L https://downloads.xiph.org/releases/ogg/libogg-1.3.5.zip --output libogg.zip
powershell -command "Expand-Archive -LiteralPath '"%USERPROFILE%"\Documents\Sonic-Mania-PC-Build\RSDKv5-Decompilation\dependencies\windows\libtheora.zip' -DestinationPath '"%USERPROFILE%"\Documents\Sonic-Mania-PC-Build\RSDKv5-Decompilation\dependencies\windows'"
powershell -command "Expand-Archive -LiteralPath '"%USERPROFILE%"\Documents\Sonic-Mania-PC-Build\RSDKv5-Decompilation\dependencies\windows\libogg.zip' -DestinationPath '"%USERPROFILE%"\Documents\Sonic-Mania-PC-Build\RSDKv5-Decompilation\dependencies\windows'"
pause
rename libtheora-1.2.0alpha1 libtheora
rename libogg-1.3.5 libogg
pause
del libtheora.zip libogg.zip
echo Dependencies done.
pause
cls
goto extraslotamy

:extraslotamy
if /I %extraslotamy%==n (goto finish)
git clone https://github.com/Kiaru-the-Fox/Sonic-Mania-Decomp-Extra-Slot-Amy.git "%USERPROFILE%"\Documents\Sonic-Mania-PC-Build\Sonic-Mania-Decomp-Extra-Slot-Amy
cd "%USERPROFILE%"\Documents\Sonic-Mania-PC-Build\Sonic-Mania-Decomp-Extra-Slot-Amy
xcopy "%USERPROFILE%"\Documents\Sonic-Mania-PC-Build\Sonic-Mania-Decomp-Extra-Slot-Amy\SonicMania "%USERPROFILE%"\Documents\Sonic-Mania-PC-Build\Sonic-Mania-Decompilation\SonicMania /s /y /i
goto finish

:finish
cls
color AF
echo --------------------------------------------------------------------------------------------------------------------
echo SETUP COMPLETE. Please continue with the guide at https://github.com/Kiaru-the-Fox/Sonic-Mania-Windows-Build-Guide/
echo --------------------------------------------------------------------------------------------------------------------
echo.
pause
exit
