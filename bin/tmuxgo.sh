#!/bin/bash
SESSION=`basename $PWD`

tmux -2 new-session -d -s $SESSION

tmux rename-window -t $SESSION:1 zsh

tmux new-window -t $SESSION -a -n zshrc

tmux new-window -t $SESSION -a -n tmux.conf

tmux new-window -t $SESSION -a -n vimrc

tmux new-window -t $SESSION -a -n zsh-aliases



