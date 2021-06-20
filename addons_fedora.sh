#!/bin/bash

echo "Checking for 'root' ..."
if [ ${USER} == 'root' ]
then
   echo "'root' user detected. Good."
else
  echo "You can become root with 'sudo -i'"
  echo "Please try again as 'root'" 
  exit
fi

A=(supertux smc megamario kdegames3 gnome-nibbles ksnakeduel aisleriot gnome-2048 
     kpat gnome-mahjongg kmahjongg kshisen gnome-sudoku ksudoku kigo ccgo gnome-chess knights
     inkscape mypaint gimp blender avidemux easytag id3lib clementine amarok k3b dvdstyler imagination gwenview 
     gcc-c++ codeblocks geany mkvtoolnix-gui darktable stellarium celestia wine)

dnf -y install ${A[@]}

