# ===================
# zshrc by Jules CARAMELLE (julescaramelle@proton.me)
# ===================

setopt prompt_subst

#Définition du prompt
[[ -f "${HOME}/dotfiles/setpromptrc" ]] && source "${HOME}/dotfiles/setpromptrc"
#Initialisation des modifications de shell
[[ -f "${HOME}/dotfiles/shellrc" ]] && source "${HOME}/dotfiles/shellrc"
#Active FZF si présent
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh