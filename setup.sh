#!/bin/bash

CWD=$(pwd)
STAMP=$(date +%s)

DOTFILES=( "vimrc" "jshintrc" "git-completion.bash" "gitconfig" "gitignore" "bash_profile" );

for i in "${DOTFILES[@]}"
do

    # If is a symlink, then just remove symlink
    if [ -L ~/.$i ]
    then
        rm ~/.$i
    fi

    # If a file and not symlink, then backup
    if [ -e ~/.$i ] && [ ! -L ~/.$i ]
    then
        echo "== Backing up ${i}"
        mv ~/.$i ~/.$i.$STAMP
    fi

    echo "Creating ~/.${i} --> ${CWD}/${i}"
    ln -s $CWD/$i ~/.$i

done
