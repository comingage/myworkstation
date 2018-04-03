#!/bin/bash
sudo apt -y update && sudo apt -y upgrade
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt -y install git ufw openssh-server libpam-google-authenticator ffmpeg thunar kdenlive oracle-java8-installer curl fuse


