export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:./node_modules/.bin"

# Add personal sbin for my stuff
export PATH="$PATH:$HOME/.sbin"

export EDITOR=mvim

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

source ~/.git-completion.bash

# Aliases
source ~/.dotfiles/bash_aliases;

# TT Under Armour B2B
export B2B_SQL_USER="shane"; export B2B_SQL_PASS="denali12"; export B2B_SQL_URL="jdbc:postgresql://localhost:5432/b2b";
export CPATH=/usr/local/include:$CPATH
export LIBRARY_PATH=/usr/local/lib:$LIBRARY_PATH

export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin/";

#
# Docker Settings
DOCKER_OPTS="-H unix:///var/run/docker.sock"
if [ -f ~/.boot2dockercfg ]; then
    source ~/.boot2dockercfg
fi
