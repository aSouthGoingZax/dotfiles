#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
#export PS1="\[\033[38;5;196m\][\[$(tput sgr0)\]\[\033[38;5;39m\]\u\[$(tput sgr0)\]\[\033[38;5;51m\]@\[$(tput sgr0)\]\[\033[38;5;208m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;51m\]\W\[$(tput sgr0)\]\[\033[38;5;196m\]]\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"

set -o vi

HISTSIZE=100000
export HISTCONTROL=ignoredups

alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ls='ls --group-directories-first --color=auto'
alias mv='mv -i'
alias rm='rm -i'
alias untar='tar -xvf'
#alias wget='wget -o /dev/null'
alias yt-dl-a='yt-dlp -x --audio-format mp3 --audio-quality 0'
alias cnr='compile-and-run'
alias cnd='compile-and-run -d'
alias suckit='[ -f "config.h" ] && sudo -A rm config.h && sudo make clean install'
alias dit='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

eval "$(starship init bash)"
