#!/bin/bash

## Remover travas do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Adicionando/Confirmando arquitetura de 32 bits ##
sudo dpkg --add-architecture i386

## Adicionar PPA ##

echo adicionando PPAs

wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -

sudo add-apt-repository 'deb https://repo.vivaldi.com/archive/deb/ stable main'

sudo add-apt-repository ppa:lutris-team/lutris

sudo wget http://deb.playonlinux.com/playonlinux_trusty.list -O /etc/apt/sources.list.d/playonlinux.list

sudo add-apt-repository ppa:webupd8team/indicator-kdeconnect

sudo apt-add-repository ppa:graphics-drivers/ppa

sudo add-apt-repository ppa:openrazer/stable

sudo add-apt-repository ppa:polychromatic/stable

wget -nc https://dl.winehq.org/wine-builds/winehq.key

sudo apt-key add winehq.key

sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'

echo Finalizado

## Atualizar repositórios ##

sudo apt update -y

## Programas Externos ##

mkdir /home/$USER/Downloads/Programas

cd /home/$USER/Downloads/Programas

sudo wget -c https://steamcdn-a.akamaihd.net/client/installer/steam.deb

sudo wget -c https://discordapp.com/api/download?platform=linux&format=deb

sudo wget -c https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb

sudo dpkg -i /home/$USER/Downloads/*.deb

## Programas APT e Flatpak ##

sudo apt install --install-recommends winehq-stable wine-stable wine-stable-i386 wine-stable-amd64 -y

sudo apt install lutris

sudo apt install vivaldi-stable

sudo apt install playonlinux

sudo apt install indicator-kdeconnect

sudo apt install kdeconnect

sudo apt install openrazer-meta

sudo apt install polychromatic

sudo apt install tilix

sudo apt install wine

sudo apt install gparted

sudo apt install gedit

sudo apt install neofetch

sudo apt install qbittorrent

sudo apt install vlc

sudo flatpak install flathub com.spotify.Client

echo Instalados

## Finalização, atualização e limpeza##

echo Atualizando...

sudo apt update && sudo apt dist-upgrade -y ; sudo apt upgrade
sudo flatpak update

## Manual ##

echo Instalar Drivers NVidia
echo Instalar icones Zafiro Icons
echo Instalar temas 
echo Instalar extensões
echo Alterar programas padrões
echo Adicionar Neofetch
echo Instalar notas, flux, synapse (Opcional)

## Finalização ##

echo Sistema atualizado com sucesso e pronto para uso
