# Init direnv
eval "$(direnv hook zsh)"

source ~/.zenv
source ~/.zalias

# -------- start oh-my-zsh -------- 
ZSH_THEME="refined"
plugins=(git)

source $ZSH/oh-my-zsh.sh
# -------- end oh-my-zsh -------- 

# Go version manager
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
