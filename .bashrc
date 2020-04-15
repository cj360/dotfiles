#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR=nano
export USE_CCACHE=1
eval "$(thefuck --alias)"
. /usr/share/git/completion/git-completion.bash

alias ll="ls -l"
alias la="ls -a"
alias gitpick='git cherry-pick'
alias mpv1080="mpv --ytdl-format='bestvideo[ext=mp4][width<=1920][height<=1080]+bestaudio[ext=m4a]'"
alias youtube-dl="youtube-dl -o '%(title)s.%(ext)s' --restrict-filenames"

# Import colorscheme from 'wal'
(cat ~/.cache/wal/sequences &)
