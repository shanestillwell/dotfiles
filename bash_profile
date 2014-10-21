export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

export EDITOR=mvim

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

source ~/.git-completion.bash
alias gca='git commit -a '
alias gs='git status'

export ANDROID_HOME=/usr/local/opt/android-sdk

# Grunt Autocomplete
eval "$(grunt --completion=bash)"

# Look in local node_modules (never need to install global again)
export PATH="$PATH:./node_modules/.bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
