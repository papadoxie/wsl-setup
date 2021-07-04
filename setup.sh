#!/bin/bash

cd ~

sudo apt update
sudo apt upgrade -y

sudo apt install git bat build-essential tldr vim fish default-jre default-jdk rustc python3 python3-dev python3-pip neofetch -y

cargo install exa

mkdir Code
mkdir Hacking

cd Code
git clone https://github.com/papadoxie/terminal-config.git

cd terminal-config/
cp .config ~/.config
cp .vimrc ~/.vimrc
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
vim -c ":source ~/vimrc"

cd ~/vim/autoload/YouCompleteMe/
./install.py

cd ~/Hacking
wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_10.0_build/ghidra_10.0_PUBLIC_20210621.zip
unzip ghidra_10.0_PUBLIC_20210621.zip
rm ghidra_10.0_PUBLIC_20210621.zip
mv ghidra_10.0_PUBLIC_20210621 Ghidra

pip3 install pwntools keystone-engine unicorn capstone ropper
bash -c "$(curl -fsSL http://gef.blah.cat/sh)"

mkdir tools
cd tools

git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git
git clone https://github.com/3ndG4me/KaliLists.git
git clone https://github.com/sherlock-project/sherlock.git
git clone https://github.com/rebootuser/LinEnum.git
git clone https://github.com/Ganapati/RsaCtfTool.git
git clone https://github.com/Anon-Exploiter/SUID3NUM.git

chsh -s /usr/bin/fish
fish