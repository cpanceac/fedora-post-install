#!/bin/bash

source header.sh

A=(supertux smc megamario kdegames3 gnome-nibbles ksnakeduel aisleriot gnome-2048 
     gnome-mines kmines gtetrinet kpat gnome-mahjongg kmahjongg kshisen gnome-sudoku 
     ksudoku kigo ccgo gnome-chess knights BlockOutII ltris
     inkscape mypaint gimp blender avidemux easytag id3lib clementine amarok k3b dvdstyler imagination gwenview 
     gcc-c++ codeblocks geany mkvtoolnix-gui darktable stellarium celestia wine yotube-dl)

dnf -y install ${A[@]}

