PROMPT="%1~ $ "

alias mvim="/Applications/MacVim.app/Contents/MacOS/Vim -g"
alias code="/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron"
alias gh_desktop="/Applications/GitHub\ Desktop.app/Contents/MacOS/GitHub\ Desktop"

# Nix
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
# End Nix

autoload -Uz compinit && compinit

eval "$(direnv hook zsh)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source $(nix-store --query $(which fzf))/share/fzf/key-bindings.zsh

