source $(nix-store --query $(which fzf))/share/fzf/key-bindings.zsh

function copylastcommand() {
    fc -ln -1 | pbcopy
}

function copyvisibleline() {
    tmux capture-pane -p -S 0 | sed '/^$/d' | fzf | pbcopy
}
