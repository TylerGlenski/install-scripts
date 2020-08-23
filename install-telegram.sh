#!/bin/bash

printf "\n\n======== Downloading tar from telegram cdn ========\n\n"
# mkdir for the download & wget telgram 64bit linux
mkdir ~/Downloads/telegram 
wget https://telegram.org/dl/desktop/linux -P ~/Downloads/telegram

printf "\n======== Unpacking the tar ========\n"
# unzip
tar -xJvf ~/Downloads/telegram/linux

printf "\n======== Moving telegram to /opt/telegram ========\n"
# move telegram exe to opt/telegram *best practice
sudo mv Telegram /opt/telegram

#check opt/telegram files
find /opt/telegram

# force creation of system link
sudo ln -sf /opt/telegram/Telegram /usr/bin/telegram

# cleanup the download
rm -rf ~/Downloads/telegram

printf "\n======== Telegram finished installing thank you for being AWESOME! ========\n"
printf '\n Enter "telegram" in terminal to launch application.\n'
