# g-install: do NOT edit, see https://github.com/stefanmaric/g
eval "$(direnv hook zsh)"

plugins=(ripgrep docker gitignore)

source $ZSH/oh-my-zsh.sh
source <(antibody init)
source $HOME/.zshalias

antibody bundle < ~/.zsh_plugins

zstyle ':completion:*:make:*:targets' call-command true # outputs all possible results for make targets
zstyle ':completion:*:make:*' tag-order targets

fpath+=(/home/robin/.zfunctions)
autoload -U compinit && compinit
