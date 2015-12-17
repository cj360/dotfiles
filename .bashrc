#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias packer='packer-color'
export EDITOR=nano
shopt -s checkwinsize
alias drdevs='ssh cj360@drdevs.com'
alias git-pick='git cherry-pick'
export ANDROID_HOME=/opt/android-sdk
export PATH=~/bin:$PATH
