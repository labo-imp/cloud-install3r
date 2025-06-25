#!/bin/bash
# # fecha revision   2025-06-25  04:45

# instalo  tmux + vim
sudo  apt-get --yes  install  tmux  vim

cp /home/$USER/cloud-install/cfg/vimrc  /home/$USER/.vimrc
cp /home/$USER/cloud-install/cfg/tmux.conf  /home/$USER/.tmux.conf

