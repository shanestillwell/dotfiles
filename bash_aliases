# Aliases
alias ll='ls -lh'

alias vi="vim"

# Git
alias gca='git commit -a '
alias gs='git status'
alias gmupdate='git checkout master && git fetch origin && git merge --ff-only origin/master'
alias gpoh='git push origin head'

# Autojump , j , z
alias j='z'

alias h='hugo'

# NPM
alias nr='npm run'
alias y='yarn'
alias yr='yarn run'

# Docker
alias dc='docker-compose'
alias dcrm='docker-compose rm -f'
alias dps='docker ps'
alias dstats='docker ps -q | xargs docker stats'
alias dexec='docker exec -it '
# https://www.shanestillwell.com/2016/08/26/Reach-Docker-Host-From-Container/
export LOCAL_IP='172.16.123.1'

# Docker Machine
alias dm='docker-machine'

dmefunction() {
    eval $(docker-machine env $1)
}
alias dme=dmefunction

# Parallels
alias psuspend='prlctl suspend '
alias pstart='prlctl start '

# Kubernetes
export KUBE_EDITOR="vim"



# Edit this file
alias dfa='vim ~/.dotfiles/bash_aliases'
alias resource='source ~/.dotfiles/bash_aliases'

alias localip='sudo ifconfig lo0 alias 172.16.123.1'

