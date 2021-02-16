#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias gitdotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
alias gitrootcfg='/usr/bin/git --git-dir=$HOME/.linuxrootcfg.git/ --work-tree=/'
alias ls='ls --color=always -Ah --group-directories-first'
alias diff='diff --color=always'
alias p='sudo pacman'

#PS1='[\u@\h \W]\$ '
PS1='\W/ \$ '

# Man colored
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Grep colored
alias grep='grep --color=always'
alias egrep='egrep --color=always'
alias fgrep='fgrep --color=always'

# Java
export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

# Qt5
export QT_QPA_PLATFORMTHEME=qt5ct

# Neofetch
neofetch

export HISTCONTROL=ignoredups
set -o vi
