if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting
starship init fish | source
zoxide init fish | source

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

fish_add_path /home/morphtail/Development/GO/golib
fish_add_path PATH=$PATH:$GOPATH/bin
fish_add_path GOPATH=/home/morphtail/Development/GO/code

fish_add_path PATH="$PATH:$HOME/.rvm/bin"
