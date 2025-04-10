source $(nix-store --query $(which fzf))/share/fzf/key-bindings.zsh

function copylastcommand() {
    fc -ln -1 | pbcopy
}

# works with $(visibleline) but not with `visibleline`
function visibleline() {
    tmux capture-pane -p -S 0 | sed '/^$/d' | sort -u | fzf
}

function copyvisibleline() {
    visibleline | pbcopy
}
