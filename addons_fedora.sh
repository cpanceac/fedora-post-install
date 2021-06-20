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

yum -y install \
  supertux smc megamario \
  inkscape mypaint gimp blender \
  avidemux easytag id3lib \
  clementine amarok \
  k3b dvdstyler imagination \
  kdegames3 gwenview \
  gcc-c++ codeblocks geany \
  mkvtoolnix-gui darktable \
  stellarium celestia wine

