#!/bin/sh
set -euC
# https://www.arp242.net/tmux.html
# https://ryan.himmelwright.net/post/scripting-tmux-workspaces/
# https://blog.damonkelley.me/2016/09/07/tmux-send-keys/
# https://tmuxguide.readthedocs.io/en/latest/tmux/tmux.html
# https://www.commandlinux.com/man-page/man1/tmux.1.html
# https://waylonwalker.com/tmux-command-line/

att() {
    [ -n "${TMUX:-}" ] &&
        tmux switch-client -t '=foo' ||
        tmux attach-session -t '=foo'
}

if tmux has-session -t '=foo' 2> /dev/null; then
    att
    exit 0
fi

tmux new-session -d -s foo -n foowindow

# getting around some garbled initial input
# tmux send-keys -t '=foo:=foowindow' Enter Enter Enter

tmux send-keys -t '=foo:=foowindow' 'cd ~' Enter

att
