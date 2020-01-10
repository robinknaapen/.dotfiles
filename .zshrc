export ZSH=$HOME/.oh-my-zsh

# Settings
plugins=(git cargo jira gitfast)
source $ZSH/oh-my-zsh.sh
source <(antibody init)

antibody bundle < ~/.zsh_plugins
ZSH_THEME="common"

# Exports
export GOPATH="$HOME/.Go"
export PATH="$PATH:$HOME/.yarn/bin:$HOME/.local/bin:$GOPATH/bin:$HOME/.cargo/bin"
export ANDROID_HOME=/home/crow/Android/Sdk
export GPG_TTY=$(tty)
export EDITOR="nvim"

source $ZSH/oh-my-zsh.sh

# Alias
alias add="sudo xbps-install"
alias del="sudo xbps-remove"
alias update="sudo xbps-install -S"
alias upgrade="sudo xbps-install -Suv"
alias search="xbps-query -Rs"
alias clean="del -oO"

alias vim="nvim"

alias mount="sudo mount -o rw,users,umask=000"
alias umount="sudo umount"

alias ls="ls -h --group-directories-first --color=auto"

[[ "$TTY" == "/dev/tty1" ]] && exec startx -- -keeptty 2> /dev/null

fpath=($fpath "/home/robin/.zfunctions")
