# Sonic Mania Decompilation: Windows Build Guide

This is a guide for building your own RSDKv5.exe and Game.dll files. This guide is intended for Windows 10/11 users only.

## Instructions

1. Install Git from [here](https://gitforwindows.org/) if you don't already have it.
2. Install Visual Studio 2022 from [here](https://visualstudio.microsoft.com/vs/) if you don't already have it. Make sure to download VS2022 Community, and select the "Desktop development with C++" option when asked about workloads.
3. Download the **Sonic Mania Windows Build Helper** script from [here](https://raw.githubusercontent.com/Kiaru-the-Fox/Sonic-Mania-Windows-Build-Guide/main/ManiaWindowsBuildHelper.bat). This script will automate a lot of the difficult parts of the Windows build process to make compilation easier.
4. Locate `ManiaWindowsBuildHelper.bat` and place it somewhere easy-to-access. No specific location is required.
5. Right click `ManiaWindowsBuildHelper.bat` and click "Run As Administrator".
6. Follow the directions in the command line window. There is an option for Extra Slot Amy support, but is not required, and the default option is no.
- 6a. The script will say "Access is Denied" exactly once. This is **normal**, and does not matter.
7. Once the script says "SETUP COMPLETE", open Visual Studio 2022. Click the "Open a project or solution" button and navigate to `C:\Users\username\Documents\Sonic-Mania-PC-Build\Sonic-Mania-Decompilation` (replacing 'username' with whatever your User folder is called) and click OK. Visual Studio will then open the Mania solution file.
8. Ensure that the latest SDK tools are installed. This can be checked by going to "Tools --> SDK Manager". Go to the `SDK Tools` tab. If the latest versions of `Android SDK Build-Tools 33`, `NDK (Side-by-Side)`, `CMake`, and `Android SDK Platform-Tools` are not installed, check the boxes for them and click "Apply". It will then download the latest versions of these tools onto your computer. Once finished downloading, press the "Finish" button, and the project will sync with the new tools.
9. Eventually, Android Studio will prompt you, in the bottom right-hand corner, to upgrade "Gradle". This is required for successful compilation, so you need to upgrade it.
10. If you want to just play the game, and are not interested in bug-reporting, you can go to "Build > Build Project". Android Studio will then automatically start compiling your APK file, and after completion, will be stored in the directory `C:\Users\username\Documents\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\android\app\build\outputs\apk\debug`.

# 11. This next step is for ONLY for users wanting to play on the RELEASE build. If you are using a Debug build, skip to Step 12.
11. Before compilation, go to "Build --> Generate Signed Bundle/APK". This will then prompt you with many fields to fill out, the required ones listed below:
- 11a. Select "APK" on the first page, it being the bottom option. Hit "Next".
- 11b. There are four fields next. They are, as follows: `Key store path`, `Key store password`, `Key alias`, and `Key password`.
- 11c. For `Key store path`, click the folder icon and go to the directory `C:\Users\username\Documents\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\android`. There should be a file named `release-key.jks`. Choose that file as the `Key store path`.
- 11d. For the next three fields, the passwords for each field are:
- **Key store password**: `retroengine`
- **Key alias**: `key0`
- **Key password**: `retroengine`
- 11e. Choose "Next", and then chose the `release` option. Android Studio will then automatically start compiling your APK file, and after completion, will be stored in the directory `C:\Users\username\Documents\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\android\app\release`.

# 12. Required mods setup
- 12a. Install your Mania APK on your phone and run it once. It will not show anything, but we can fix that.
- 12b. Download the required `mods.zip` folder from [here](https://www.dropbox.com/s/czghcw7ps128qtj/mods.zip?dl=0).
- 12c. Download the `mods.zip` folder from Dropbox and place it in the directory `[root]\RSDK\v5` on your phone. Then create a folder named `mods` and enter the folder. Unzip the contents of the `mods.zip` file into there, and you should now be able to play Mania!

## Support

If you need any support, please feel free to reach out to the Retro Engine Modding Server on Discord. Invite: http://dc.railgun.works/retroengine

Zoe the Fox is also available for direct support, via the Discord alias "KiaraGale#8677".
