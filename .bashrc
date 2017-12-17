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

alias git-pick='git cherry-pick'
export USE_CCACHE=1
export CCACHE_DIR=~/.ccache
export PATH=$PATH{}:/opt/android-sdk/platform-tools

# Import colorscheme from 'wal'
(wal -r &)
