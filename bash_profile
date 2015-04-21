export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin"

# Add personal sbin for my stuff
export PATH="$PATH:$HOME/.sbin"

export EDITOR=mvim

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

source ~/.git-completion.bash

# Aliases
alias gca='git commit -a '
alias gs='git status'

alias nr='npm run'
alias sshane='ssh shane@10.0.1.13'

export ANDROID_HOME=/usr/local/opt/android-sdk

# Grunt Autocomplete
eval "$(grunt --completion=bash)"

# Look in local node_modules (never need to install global again)
export PATH="$PATH:./node_modules/.bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# TT Under Armour B2B
export B2B_SQL_USER="shane"; export B2B_SQL_PASS="denali12"; export B2B_SQL_URL="jdbc:postgresql://localhost:5432/b2b";
