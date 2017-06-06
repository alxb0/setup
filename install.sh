#! /bin/bash
CURDIR=$(pwd)

sudo apt-get update
sudo apt-get dist-upgrade -y

sudo apt-get install google-chrome-stable -y
sudo apt-get install vim -y
sudo apt-get install i3 -y
sudo apt-get install p7zip-full -y
sudo apt-get install gimp -y
sudo apt-get install gitk -y
sudo apt-get install minicom -y
sudo apt-get install lib32z1 -y
sudo apt-get install libusb-1.0.0-dev -y
sudo apt-get install pkg-config autotools-dev -y
sudo apt-get install lib32ncurses5 -y
sudo apt-get install autoconf -y
sudo apt-get install meld -y
sudo apt-get install git-gui -y
sudo apt-get install xbacklight -y
sudo apt-get install xfonts-terminus -y

git config --global core.editor "vim"

sudo adduser $USER dialout

mkdir -p /home/$USER/.i3
cp $CURDIR/i3/config /home/$USER/.i3/config

ln -f -s $CURDIR/i3/config /home/$USER/.i3/config
ln -f -s $CURDIR/bashrc/.bashrc /home/$USER/.bashrc
ln -f -s $CURDIR/vim/.vimrc /home/$USER/.vimrc
ln -f -s $CURDIR/xterm/.Xresources /home/$USER/.Xresources
sudo ln -f -s $CURDIR/i3/i3status.conf /etc/i3status.conf

sudo update-alternatives --config x-www-browser

source /home/$USER/.bashrc
xrdb /home/$USER/.Xresources

i3-msg restart
