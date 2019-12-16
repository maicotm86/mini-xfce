#!/bin/bash

apt update

#-------------------------
#Xorg minimo
#-------------------------

apt --no-install-recommends install -y xserver-xorg-core
#apt --no-install-recommends install -y xserver-xorg-video-vesa
apt --no-install-recommends install -y xserver-xorg-video-intel
#apt --no-install-recommends install -y xserver-xorg-video-nouveau
#apt --no-install-recommends install -y xserver-xorg-video-nvidia
#apt --no-install-recommends install -y xserver-xorg-video-ati
#apt --no-install-recommends install -y xserver-xorg-video-fbdev
apt --no-install-recommends install -y xserver-xorg

#-------------------------
#Xfce minimo
#-------------------------

apt --no-install-recommends install -y xfwm4
apt --no-install-recommends install -y xfce4-session
apt --no-install-recommends install -y xfce4-panel
apt --no-install-recommends install -y xfdesktop4
apt --no-install-recommends install -y policykit-1
apt --no-install-recommends install -y xfce4-power-manager
apt --no-install-recommends install -y gtk2-engines gtk2-engines-pixbuf
apt --no-install-recommends install -y x11-xserver-utils

#-------------------------
#Recomendados
#-------------------------


#### Basicos ###

#apt --no-install-recommends install -y lightdm
#apt --no-install-recommends install -y slim
apt --no-install-recommends install -y lxterminal
apt --no-install-recommends install -y lxtask
apt --no-install-recommends install -y mousepad
#-------------------------
apt --no-install-recommends install -y network-manager-gnome
sed -i 's/false/true/g' /etc/NetworkManager/NetworkManager.conf
#-------------------------
apt --no-install-recommends install -y thunar



#### Codecs e Audio/Video ###

apt install -y libav-tools gstreamer1.0-libav
#apt install -y ffmpeg
apt install -y gstreamer1.0-plugins-good
apt install -y gstreamer1.0-plugins-bad
apt install -y gstreamer1.0-plugins-ugly
apt install -y gstreamer1.0-nice
apt --no-install-recommends install -y vlc qt4-qtconfig
apt --no-install-recommends -y install pulseaudio
apt --no-install-recommends install -y xfce4-pulseaudio-plugin
#apt install -y alsa-utils


#### Complementos ###

apt install -y xfce4-whiskermenu-plugin
apt install -y viewnior
apt --no-install-recommends install -y system-config-printer cups
#apt install -y xcompmgr
apt --no-install-recommends install -y xfburn
apt install -y firefox-esr firefox-esr-l10n-pt-br
apt --no-install-recommends install -y atril
#apt --no-install-recommends install -y desktop-base

reboot
