#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ "$TERM" = "linux" ]; then
    _SEDCMD='s/.*\*color\([0-9]\{1,\}\).*#\([0-9a-fA-F]\{6\}\).*/\1 \2/p'
    for i in $(sed -n "$_SEDCMD" $HOME/.Xresources | awk '$1 < 16 {printf "\\e]P%X%s", $1, $2}'); do
        echo -en "$i"
    done
    clear
fi

alias ls='ls --color=auto'
PS1='\u@\h \W \$ '


if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

PATH=~/.cargo/bin:~/bin:$PATH

umask 077

alias la='ls -a'
alias ll='ls -al'
alias hg='history | grep'
alias aurinstall='makepkg -si'
alias vim='nvim'
alias nano='vim'
alias paci='sudo pacman -Syu'
alias pacr='sudo pacman -Rs'
alias pacl='pacman -Qqe'
alias pacs='pacman -Ss'
alias owndir='sudo chown -R $USER:$USER'
alias dc='docker-compose'
alias toclipboard='xclip -sel c < '

