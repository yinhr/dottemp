# zplug home
export ZPLUG_HOME=$HOME/.zsh/.zplug

# Locale 
export LANG=ja_JP.UTF-8
# Default editor
export EDITOR=vim

# XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# History
export HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# Use user local path 
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# Ruby configurations
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
