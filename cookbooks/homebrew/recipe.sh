#!/bin/bash

# install homebrew
which brew > /dev/null
if [ $? != 0 ]; then
  cd ~/.itamae
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
