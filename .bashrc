#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '
#PS1='\[\e[32m\]\u@\h\[\e[0m\] \[\e[34m\]\W\[\e[0m\] \$ '
PS1='\[\e]0;\u@\h: \w\a\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

EDITOR=vim
PATH=$PATH:~/bin

# https://wiki.archlinux.org/index.php/HiDPI#Xorg
function set-hidpi-xorg() {
    xrandr --output DP-4 --scale 1.5x1.5
}

function sshfs-macfailpro() {
    sshfs darrenchin@macfailpro.dchin.dev:/Users/darrenchin ~/macfailpro.dchin.dev -p 8022
}
