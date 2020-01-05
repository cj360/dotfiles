#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export EDITOR=nano

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

eval "$(thefuck --alias fuck)"
alias ll="ls -l"
alias la="ls -a"
alias mpv1080="mpv --ytdl-format='bestvideo[ext=mp4][width<=1920][height<=1080]+bestaudio[ext=m4a]'"
alias youtube-dl="youtube-dl -o '%(title)s.%(ext)s' --restrict-filenames"

. /usr/share/git/completion/git-completion.bash
alias gitpick='git cherry-pick'
export CCACHE_DIR=~/.ccache
export USE_CCACHE=1

# Import colorscheme from 'wal'
(cat ~/.cache/wal/sequences &)
