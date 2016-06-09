#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

shopt -s checkwinsize
eval "$(thefuck --alias fuck)"
export EDITOR=nano
alias git-pick='git cherry-pick'
export PATH=~/bin:$PATH
export LANG=C
export USE_CCACHE=1
export CCACHE_DIR=~/.ccache
