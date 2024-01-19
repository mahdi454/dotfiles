#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#export XDG_CURRENT_DESKTOP=KDE
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

exec zsh


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
PATH=$PATH:$HOME/.config/polybar/scripts:$HOME/.scripts
. "$HOME/.cargo/env"

