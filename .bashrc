#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# misc options
alias ls='ls --color=auto'
export EDITOR=nano
eval "$(thefuck --alias fuck)"

# options for android, git
alias git-pick='git cherry-pick'
export PATH=~/.bin:$PATH
export LANG=C
export USE_CCACHE=1
export CCACHE_DIR=~/.ccache
