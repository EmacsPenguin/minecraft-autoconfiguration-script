# minecraft-autoconfiguration-script
This is a script that automates setting up a minecraft server. It is still a work in progress. If you find a bug, I encourage you to report it is the issues area. 

## usage

Run `curl https://raw.githubusercontent.com/EmacsPenguin/minecraft-autoconfiguration-script/main/minecraft-config-script.sh | bash` in a linux terminal. Make sure you have the dependencies installed.

## dependencies 

You need the following programs to use the script.

* openjdk-8-jdk
* dialog
* bash

## what to do after running script

You will need to set up networking for your minecraft server. This includes port forwarding and opening your firewall. For more information you should consult [the wiki](https://minecraft.fandom.com/wiki/Tutorials/Setting_up_a_server#Port_forwarding).

## things not working and wanted features

* Support for 1.17.2, and 1.8.9
* Support for Forge and Spigot
