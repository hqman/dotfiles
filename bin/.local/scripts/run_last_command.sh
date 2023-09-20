#!/usr/bin/env fish
# run  tmux -t panel 1 $historys[1] Enter
#
# then go back to  panel

tmux send-keys -t "2" $history[1] Enter
tmux select-pane -t "1"
