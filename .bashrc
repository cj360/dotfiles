#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export EDITOR=nano
shopt -s checkwinsize
alias git-pick='git cherry-pick'
export ANDROID_HOME=/opt/android-sdk
export PATH=~/bin:$PATH
