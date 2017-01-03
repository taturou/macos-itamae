#!/bin/bash

# install Homebrew
which brew > /dev/null
if [ $? != 0 ]; then
  cd ~/.itamae
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install Homebrew-Cask
brew cask --version

# install Homebrew-versions
brew tap caskroom/versions
