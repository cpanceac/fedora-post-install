#!/bin/bash
# 
# by Cornel Panceac
#


echo "************************"
echo "Checking for 'root' ..."
if [ ${USER} == 'root' ]
then
   echo "'root' user detected. Good."
else
  echo "You can become root with 'sudo -i'"
  echo "Please try again as 'root'" 
  exit
fi

echo "************************"
sleep 3


echo "*********************************"
echo "Preparing repos..."
echo "*********************************"
sleep 1

releasever=$(cat /etc/fedora-release | cut -f3 -d ' ')

rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$releasever.noarch.rpm
rpm -ivh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$releasever.noarch.rpm


echo "*********************************"
echo "Some more files ..."
echo "codecs..."
echo "*********************************"
sleep 1

wget -c http://www.mplayerhq.hu/MPlayer/releases/codecs/all-20110131.tar.bz2
mkdir -p /usr/lib/codecs
tar -jxvf all-20110131.tar.bz2 --strip-components 1 -C /usr/lib/codecs/

echo "*********************************"
echo "Google Chrome ..."
echo "*********************************"
sleep 1

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
rpm -ivh google-chrome-stable_current_x86_64.rpm


echo "*********************************"
echo "Installing things ..."
echo "*********************************"

yum -y install \
  qmmp{,-plugin-pack-freeworld} \
  gstreamer1-plugins-{ugly,bad-freeworld} \
  gstreamer1-libav mplayer{,-gui} \
  mpv mencoder vlc ffmpeg \
  google-chrome-stable \
  p7zip arj unrar unace \
  mc hexchat cockpit-pcp


echo "*****************************************"
echo "Main install completed."
echo "Check also the addons script."
echo "*****************************************"

