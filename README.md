# Jetson Nano Setup Guide

## Boot

### Boot with SD card for first boot
* Read through instructions in here to create a bootable sd: https://developer.nvidia.com/embedded/learn/get-started-jetson-nano-devkit#intro
* Insert the Sd card and boot the system
* Update packages after install
```
sudo apt update
```
* Install XRDP for rdp
```
sudo apt install xrdp 
sudo systemctl enable xrdp 
sudo reboot
```
<b>(NOT WORKING AS IS SO FIX!!!)</b>

Install xfce4
```
sudo apt install xfce4
```
Comment out the last two lines in /etc/xrdp/startwm.sh

Add the following line to /etc/xrdp/startwm.sh
```
startxfce4
```
Restart xrdp
```
sudo service xrdp restart
```
* Install git
```
sudo apt install git
```
* Install jetson fan ctl
```
git clone https://github.com/Pyrestone/jetson-fan-ctl.git
cd jetson-fan-ctl
./install.sh
```