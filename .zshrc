# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/d/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Variables
export BROWSER="firefox"
export EDITOR="vim"
export PATH="${PATH}:/home/d/.scripts"

# Aliases
alias sudo='doas' # Using doas instead of sudo
alias gitdotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
alias ls='ls --color=always -Ah --group-directories-first'
alias diff='diff --color=always'
alias p='sudo pacman'

#PROMPT='%F{green}%n%f@%F{magenta}%m%f %F{blue}%B%~%b%f %# '
PROMPT='%F{blue}%B%~/%b%f $ '
RPROMPT='[%F{yellow}%?%f]'

# Adding powerline to zsh
#powerline-daemon -q
#. /usr/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh

#Fish highlighting
if [[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

#Fish autosuggestions
if [[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Starts ufetch
$HOME/.scripts/ufetch-arch
