if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting
starship init fish | source

alias up="paru --skipreview -Syyu && flatpak update"
alias pkg="paru --skipreview"
alias ls="lsd"
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias rm="trash"

fish_add_path /home/morphtail/Data/Development/GO/golib
fish_add_path PATH=$PATH:$GOPATH/bin
fish_add_path GOPATH=/home/morphtail/Data/Development/GO/code

#source /usr/share/nvm/init-nvm.sh
fish_add_path PATH="$PATH:$HOME/.rvm/bin"
