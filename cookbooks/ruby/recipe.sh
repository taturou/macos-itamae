#!/bin/bash
#
# refer to http://stangler.hatenablog.com/entry/2016/09/29/142302
#

# install rbenv
rbenv versions 2> /dev/null
if [ $? != 0 ]; then
  anyenv install rbenv
  exec $SHELL -l
fi

# install plugins
rbenvroot=`rbenv root`

if [ ! -d "${rbenvroot}/plugins" ]; then
  mkdir -p "${rbenvroot}/plugins"
fi

# install rbenv-gemset
if [ ! -d "${rbenvroot}/plugins/rbenv-gemset" ]; then
  git clone git://github.com/jf/rbenv-gemset.git "${rbenvroot}/plugins/rbenv-gemset"
fi

# install rbenv-gem-rehash
if [ ! -d "${rbenvroot}/plugins/rbenv-gem-rehash" ]; then
  git clone https://github.com/sstephenson/rbenv-gem-rehash.git "${rbenvroot}/plugins/rbenv-gem-rehash"
fi

# install ruby 2.4.0
rbenv versions | grep 2.4.0 > /dev/null
if [ $? != 0 ]; then
  rbenv install 2.4.0
  rbenv rehash
fi

# set local version to ruby 2.4.0
cd ~/.itamae
rbenv local 2.4.0

# install bundler
gem list | grep bundler > /dev/null
if [ $? != 0 ]; then
  gem install bundler
fi

# create Gemfile
cd ~/.itamae

if [ ! -f ./Gemfile ]; then
  echo '# frozen_string_literal: true' >> ./Gemfile
  echo 'source "https://rubygems.org"' >> ./Gemfile
  echo '' >> ./Gemfile
fi
