#!/bin/bash
#
# refer to http://qiita.com/yutackall/items/6c48cf56317d8501f6df
#

# install ndenv
ndenv versions 2> /dev/null
if [ $? != 0 ]; then
  anyenv install ndenv
  exec $SHELL -l
fi

# install Node.js v7.4.0
ndenv versions | grep v7.4.0 > /dev/null
if [ $? != 0 ]; then
  ndenv install v7.4.0
  ndenv rehash
fi

# set global version to Node.js v7.4.0
ndenv global v7.4.0

# set local version to Node.js v7.4.0
cd ~/.itamae
ndenv local v7.4.0
