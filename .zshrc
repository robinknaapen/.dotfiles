# Settings
ZSH_THEME="fuyu"
plugins=(git antigen)

# Exports
export ZSH=/home/crow/.oh-my-zsh
export GOPATH="$HOME/.Go"
export PATH="$HOME/.yarn/bin:$HOME/.local/bin:$GOPATH/bin:$PATH"
export EDITOR="nvim"

source $ZSH/oh-my-zsh.sh

# Alias
alias add="sudo xbps-install"
alias del="sudo xbps-remove"
alias update="sudo xbps-install -S"
alias upgrade="sudo xbps-install -Suv"
alias search="xbps-query -Rs"
alias clean="del -oO"

alias mount="sudo mount -o rw,users,umask=000"
alias umount="sudo umount"

# Antigen
antigen bundle zsh-users/zsh-syntax-highlighting
