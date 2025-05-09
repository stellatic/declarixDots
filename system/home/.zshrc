source ~/.config/zsh/theme.zsh
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/env.zsh
source ~/.config/zsh/plugins/plugins.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep nomatch
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/diverseuniverse/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
#
export XDG_CURRENT_DESKTOP="sway"
export QT_QPA_PLATFORMTHEME="qt5ct" 
pfetch
