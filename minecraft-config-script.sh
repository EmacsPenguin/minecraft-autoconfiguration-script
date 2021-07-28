#!/bin/bash

forge_16_install () {
	dialog --title "this would install forge 1.16.4" --msgbox "This would install forge 1.16.4" 7 60

	mkdir Minecraft-Server
	cd Minecraft-Server

	total_ram=$(free -m | awk '{print $2}' | sed -n 2p)
	ram_message="How much ram (in megabytes) would you like to dedicate to the server. You have ""$total_ram"" in total."
	
	dialog --title "Dedicated Ram" --inputbox "$ram_message" 7 60 2> /tmp/minecraft_autoconfig_dialog3
	dialog --title "Eula" --yesno "Do you except the minecraft EULA?" 7 60

	if [ $? == 0 ]
	then
		echo eula=true > eula.txt
	else
		dialog --title "EULA" --msgbox "Sorry you need to execpt the EULA!"
	fi
	
	dedicated_ram=$(cat /tmp/minecraft_autoconfig_dialog3)
	full_start_command="java -Xmx""$dedicated_ram""M -Xms1024M -jar minecraft_server.1.16.4.jar nogui"
	
	echo "$full_start_command" > start.sh
	chmod +x start.sh

	rm /tmp/minecraft_autoconfig_dialog3

	clear
	echo "Downloading Minecraft"
	echo "-------------------------------------"
	wget -O forge-installer.jar "https://maven.minecraftforge.net/net/minecraftforge/forge/1.16.4-35.1.37/forge-1.16.4-35.1.37-installer.jar"
	chmod +x forge-installer.jar
	java -jar forge-installer.jar --installServer

	rm /tmp/minecraft_autoconfig_dialog4

	dialog --title "Your Done!" --msgbox "To run your minecraft server go to the Minecraft-Server directory and run start.sh. You will need to manually configure your networking. You may need to open your firewall, and portforword the server. You can use Gnu Screen or another terminal multiplexer to run your server without keeping your terminal open." 9 70
}

forge_12_install () {
	dialog --title "this would install forge 1.12.2" --msgbox "This would install forge 1.12.2" 7 60

	mkdir Minecraft-Server
	cd Minecraft-Server

	total_ram=$(free -m | awk '{print $2}' | sed -n 2p)
	ram_message="How much ram (in megabytes) would you like to dedicate to the server. You have ""$total_ram"" in total."
	
	dialog --title "Dedicated Ram" --inputbox "$ram_message" 7 60 2> /tmp/minecraft_autoconfig_dialog3
	dialog --title "Eula" --yesno "Do you except the minecraft EULA?" 7 60

	if [ $? == 0 ]
	then
		echo eula=true > eula.txt
	else
		dialog --title "EULA" --msgbox "Sorry you need to execpt the EULA!"
	fi
	
	dedicated_ram=$(cat /tmp/minecraft_autoconfig_dialog3)
	full_start_command="java -Xmx""$dedicated_ram""M -Xms1024M -jar minecraft_server.1.12.2.jar nogui"
	
	echo "$full_start_command" > start.sh
	chmod +x start.sh

	rm /tmp/minecraft_autoconfig_dialog3

	clear
	echo "Downloading Minecraft"
	echo "-------------------------------------"
	wget -O forge-installer.jar "https://maven.minecraftforge.net/net/minecraftforge/forge/1.12.2-14.23.5.2855/forge-1.12.2-14.23.5.2855-installer.jar"
	chmod +x forge-installer.jar
	java -jar forge-installer.jar --installServer

	rm /tmp/minecraft_autoconfig_dialog4

	dialog --title "Your Done!" --msgbox "To run your minecraft server go to the Minecraft-Server directory and run start.sh. You will need to manually configure your networking. You may need to open your firewall, and portforword the server. You can use Gnu Screen or another terminal multiplexer to run your server without keeping your terminal open." 9 70
}

vanilla_16_install () { 

	mkdir Minecraft-Server
	cd Minecraft-Server

	total_ram=$(free -m | awk '{print $2}' | sed -n 2p)
	ram_message="How much ram (in megabytes) would you like to dedicate to the server. You have ""$total_ram"" in total."
	
	dialog --title "Dedicated Ram" --inputbox "$ram_message" 7 60 2> /tmp/minecraft_autoconfig_dialog3
	dialog --title "Eula" --yesno "Do you except the minecraft EULA?" 7 60

	if [ $? == 0 ]
	then
		echo eula=true > eula.txt
	else
		dialog --title "EULA" --msgbox "Sorry you need to execpt the EULA!"
	fi
	
	dedicated_ram=$(cat /tmp/minecraft_autoconfig_dialog3)
	full_start_command="java -Xmx""$dedicated_ram""M -Xms1024M -jar minecraft-server.jar nogui"
	
	echo "$full_start_command" > start.sh
	chmod +x start.sh

	rm /tmp/minecraft_autoconfig_dialog3

	clear
	echo "Downloading Minecraft"
	echo "-------------------------------------"
	wget -O minecraft-server.jar "https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar"
	chmod +x minecraft-server.jar

	dialog --title "Your Done!" --msgbox "To run your minecraft server go to the Minecraft-Server directory and run start.sh. You will need to manually configure your networking. You may need to open your firewall, and portforword the server. You can use Gnu Screen or another terminal multiplexer to run your server without keeping your terminal open." 9 70
}

vanilla_12_install () { 

	mkdir Minecraft-Server
	cd Minecraft-Server

	total_ram=$(free -m | awk '{print $2}' | sed -n 2p)
	ram_message="How much ram (in megabytes) would you like to dedicate to the server. You have ""$total_ram"" in total."
	
	dialog --title "Dedicated Ram" --inputbox "$ram_message" 7 60 2> /tmp/minecraft_autoconfig_dialog3
	dialog --title "Eula" --yesno "Do you except the minecraft EULA?" 7 60

	if [ $? == 0 ]
	then
		echo eula=true > eula.txt
	else
		dialog --title "EULA" --msgbox "Sorry you need to execpt the EULA!"
	fi
	
	dedicated_ram=$(cat /tmp/minecraft_autoconfig_dialog3)
	full_start_command="java -Xmx""$dedicated_ram""M -Xms1024M -jar minecraft-server.jar nogui"
	
	echo "$full_start_command" > start.sh
	chmod +x start.sh

	rm /tmp/minecraft_autoconfig_dialog3

	clear
	echo "Downloading Minecraft"
	echo "-------------------------------------"
	wget -O minecraft-server.jar "https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar"
	chmod +x minecraft-server.jar

	dialog --title "Your Done!" --msgbox "To run your minecraft server go to the Minecraft-Server directory and run start.sh. You will need to manually configure your networking. You may need to open your firewall, and portforword the server. You can use Gnu Screen or another terminal multiplexer to run your server without keeping your terminal open." 9 70
}


minecraft_version_12 () {
	dialog --title "1.12.2" --msgbox "You chose 1.12.2, in the next menu you can select what type of server you would like. If you are new to running a server I recommend using vanilla." 7 60
	dialog --title "What server would you like to use." --menu "" 15 70 3 Vanilla "The official minecraft server." Forge "Is the best for mods" 2> /tmp/minecraft_autoconfig_dialog2

	sub_version=$(cat /tmp/minecraft_autoconfig_dialog2)
	rm /tmp/minecraft_autoconfig_dialog2

	if [ "$sub_version" == "Vanilla" ]
	then
		vanilla_12_install
	elif [ "$sub_version" == "Forge" ]
	then
		forge_12_install
	fi
}

minecraft_version_16 () {
	dialog --title "1.16.4" --msgbox "You chose 1.16.4 in the next menu you can select what type of server you would like." 9 60
	dialog --title "What server would you like to use." --menu "" 15 70 2 Vanilla "The official minecraft server." Forge "Is the best for mods" 2> /tmp/minecraft_autoconfig_dialog2

	sub_version=$(cat /tmp/minecraft_autoconfig_dialog2)
	rm /tmp/minecraft_autoconfig_dialog2

	if [ "$sub_version" == "Vanilla" ]
	then
		vanilla_16_install

	elif [ "$sub_version" == "Forge" ]
	then
		forge_16_install
	fi
}

echo "If there is an error message you may need to install dialog. It should be in most distro's repos."
dialog --title "Welcome" --msgbox "This is a Minecraft server auto configuration script. Before you can begin you need to install the following dependencies: openjdk-8-jdk, and wget. Answer the following questions and you should end up with a functioning Minecraft server." 9 60
dialog --title "What version of minecraft would you like to use." --menu "" 15 95 4 1.16.4 "The most recent version supported by this script, but it is bad for modded" 1.12.2 "The best version from modded minecraft." 2> /tmp/minecraft_autoconfig_dialog1

output=$(cat /tmp/minecraft_autoconfig_dialog1)

if [ "$output" == "1.12.2" ]
then
	minecraft_version_12
elif [ "$output" == 1.16.4 ]
then
	minecraft_version_16
fi

rm /tmp/minecraft_autoconfig_dialog1
