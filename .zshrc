# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/morphtail/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

export DEFAULT_USER="morphtail"
export TERM="xterm-256color"
export ZSH=/usr/share/oh-my-zsh

plugins=(archlinux
	bundler
	docker
	jsontools
	gitfast
	colored-man-pages
	colorize
	command-not-found
	cp
	dirhistory
	sudo)
# /!\ zsh-syntax-highlighting and then zsh-autosuggestions must be at the end

source $ZSH/oh-my-zsh.sh

DISABLE_AUTO_UPDATE="true"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

alias up="paru --skipreview -Syyu"
alias pkg="paru --skipreview"
alias ls="logo-ls"
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias rm="trash"
alias vim="nvim"
alias cd="z"

export GOPATH=/home/morphtail/Development/GO/golib
export PATH=$PATH:$GOPATH/bin
export GOPATH=/home/morphtail/Development/GO/code

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
