# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.bash_override ]] && source ~/.bash_override

cat ~/.cache/wal/sequences

PS1='\u@\h \W \$ '
export EDITOR='vim'
export VISUAL='vim'
export MANPAGER='vim -c MANPAGER -'

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -al'
alias hg='history | grep'
alias yi='yay -Syu'
alias yr='yay -Rs'
alias yl='yay -Qqe | grep'
alias ys='yay -Ss'
alias owndir='sudo chown -R $USER:$USER'
alias dc='docker-compose'
alias toclipboard='xclip -sel c < '

