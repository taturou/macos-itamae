#!/bin/bash

un=`uname`
if [ $un = "Darwin" ]; then
  bundle exec itamae local --node-json nodes/taturou.json roles/macos.rb
fi
