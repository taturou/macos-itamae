#!/bin/bash

# install itamae
cd ~/.itamae

grep '\<itamae\>' ./Gemfile > /dev/null
if [ $? != 0 ]; then
  echo "gem 'itamae'" >> ./Gemfile
  bundle install --path=.bundle
fi
