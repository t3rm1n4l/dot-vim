#!/bin/bash
#Description: Install vim configs

if [ -d ~/.vim ];
then
    mv ~/.vim ~/.vim_backup
fi

cp -rf vim ~/.vim
cp -f vimrc ~/.vimrc

gem install pygments.rb
gem install redcarpet -v 2.3.0
npm -g install instant-markdown-d
