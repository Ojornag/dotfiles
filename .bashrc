#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alF'
PS1='[\u@\h \W]\$ '

caelestia scheme set -n dynamic -m dark

eval "$(starship init bash)"
