#!/bin/bash

clear

echo "Iearthicraft Linux Server Install Script v1.0 BY: Jason of Iearthicraft (JasonIEC)"
echo "Licenced under GPLv3"
echo "INSTRUCTIONS:"
echo "1. This script will download and start the Minecraft Forge Installer"
echo "2. Then, you must find the path of this folder and put that under path"
echo "3. Then, select install server and click ok"
echo "Then, the Minecraft EULA will be displayed and ask for you to accept it."
read -p "Press any key to continue..."
wget -O forgeinstaller.jar http://files.minecraftforge.net/maven/net/minecraftforge/forge/1.9.4-12.17.0.1937/forge-1.9.4-12.17.0.1937-installer.jar
java -jar forgeinstaller.jar
echo "Your browser will now open to the EULA. Press any key to get to the accept/deny prompt."
if which xdg-open > /dev/null
then
    xdg-open https://account.mojang.com/documents/minecraft_eula
elif which gnome-open > /dev/null
then
    gnome-open https://account.mojang.com/documents/minecraft_eula
fi
read -p "Press any key to continue..."
read -p "Do you accept the EULA?(true/false)" accept
accept="eula=$accept"
echo accept >> eula.txt
echo "Thanks for using JasonIEC's Linux installer for Forge 1.9.4-12.17.0.1937"
