#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias gitdotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
alias ls='ls --color=always -Ah --group-directories-first'
alias diff='diff --color=always'
alias p='sudo pacman'

#PS1='[\u@\h \W]\$ '
PS1='\W/ \$ '

$HOME/.scripts/ufetch-arch

# Man colored
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

export HISTCONTROL=ignoredups
set -o vi
