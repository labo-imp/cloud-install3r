#!/bin/bash
tmux new-session -d -s sinstalling '/home/$USER/cloud-install/sh/ins_main02_labo3r.sh; exec $SHELL'
