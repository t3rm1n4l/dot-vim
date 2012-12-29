#!/bin/bash
#Description: Install vim configs

if [ -d ~/.vim ];
then
    mv ~/.vim ~/.vim_backup
fi

cp -rf vim ~/.vim
cp -f vimrc ~/.vimrc
