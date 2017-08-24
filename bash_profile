export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:./node_modules/.bin"

# Add personal sbin for my stuff
export PATH="$PATH:$HOME/.sbin"

export EDITOR=mvim

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#source ~/.git-completion.bash

# autojump
# source ~/.dotfiles/shonenjump.bash
# source /usr/local/etc/profile.d/autojump.sh
#[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
. ~/.dotfiles/z.sh

export GOPATH=$HOME/Sites/go

# Aliases
source ~/.dotfiles/bash_aliases;
