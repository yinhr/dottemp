# .zshrc

# compile (if you have no .zshrc.zwc, execute "zcompile .zxhrc" once)
if [ $ZDOTDIR/.zshrc -nt $ZDOTDIR/.zshrc.zwc ]; then
  zcompile $ZDOTDIR/.zshrc
fi

# zplug plugin installation
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"

if ! zplug check --verbose; then
  printf 'Install? [y/N]: '
  if read -q; then
    echo; zplug install
  fi
fi

zplug load --verbose

# Completion
autoload -Uz compinit
compinit

# load bash complement script
autoload -U +X bashcompinit && bashcompinit
# set terraform command completion
complete -o nospace -C /usr/local/bin/terraform terraform

# Color
autoload -Uz colors
colors
 
# Load theme
source $ZDOTDIR/.theme.zsh

# Use vim key bind
bindkey -v

# Directory Stack
setopt auto_pushd
# Ignore pushd duplication
setopt pushd_ignore_dups
# Change directory without cd command
setopt auto_cd
# Ignore history duplication
setopt hist_ignore_all_dups
# Redule blank
setopt hist_reduce_blanks
# Ignore space
setopt hist_ignore_space
