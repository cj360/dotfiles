#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR=nano
eval "$(thefuck --alias fuck)"
alias mpv-1080="mpv --ytdl-format='bestvideo[ext=mp4][width<=1920][height<=1080]+bestaudio[ext=m4a]'"

# options for android, git
alias git-pick='git cherry-pick'
export PATH=~/.bin:$PATH
export LANG=C
export USE_CCACHE=1
export CCACHE_DIR=~/.ccache
