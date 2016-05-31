@ECHO OFF
echo Iearthicraft Windows Server Install Script v1.0 BY: Jason of Iearthicraft (JasonIEC)
echo Licenced under GPLv3
echo This script is for: Forge 1.8.9-11.15.1.1902
PAUSE
test&cls
echo INSTRUCTIONS:
echo 1. This script will download and start the Minecraft Forge Installer
echo 2. Then, you must find the path of this folder and put that in under path
echo 3. Then, select install server and click ok
echo 4. The script will display the EULA and ask for you to accept it
PAUSE
powershell -Command "Invoke-WebRequest http://files.minecraftforge.net/maven/net/minecraftforge/forge/1.8.9-11.15.1.1902-1.8.9/forge-1.8.9-11.15.1.1902-1.8.9-installer.jar -OutFile forgeinstaller.jar"
java -jar forgeinstaller.jar
echo Your default web browser will now open to the EULA. Press any key to get to the accept/deny prompt.
start "" https://account.mojang.com/documents/minecraft_eula
PAUSE
set /p accept=Do you accept the EULA?(true/false)
echo eula=%accept% >> eula.txt
echo Thank you for using JasonIEC's easy server installer for Forge 1.8.9-11.15.1.1902!
PAUSE
