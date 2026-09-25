#!/usr/bin/env bash
# ===================
# bashrc by Jules CARAMELLE (julescaramelle@proton.me)
# ===================

#Définition du PS1
[[ -f "${HOME}/dotfiles/setpromptrc" ]] && source "${HOME}/dotfiles/setpromptrc"
#Initialisation des modifications de shell
[[ -f "${HOME}/dotfiles/shellrc" ]] && source "${HOME}/dotfiles/shellrc"
#Active FZF si présent
[[ -f ~/.fzf.bash ]] && source ~/.fzf.bash