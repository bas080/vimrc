#!/bin/bash

#path of the current script
dirname=$(cd "$(dirname "$0")/.."; pwd)

#install system dependencies
sudo apt-get install git ack-grep -y && \

  #install pathogen
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \

  #install the plugins
  cd ~/.vim/bundle && \
  git clone https://github.com/mileszs/ack.vim

echo ""
echo add the following line to your vimrc \"source $dirname/vimrc\"
