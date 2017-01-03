#!/bin/bash
#
# refer to http://stangler.hatenablog.com/entry/2016/09/28/175713
#

# install anyenv
anyenv 2> /dev/null
if [ $? != 0 ]; then
  git clone https://github.com/riywo/anyenv ~/.anyenv
fi

# setting for bash
if [ -f ~/.bashrc ]; then
  touch ~/.bashrc
fi

grep anyenv ~/.bashrc > /dev/null
if [ $? != 0 ]; then
  echo '' >> ~/.bashrc
  echo '# anyenv' >> ~/.bashrc
  echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(anyenv init -)"' >> ~/.bashrc
  exec $SHELL -l
fi

# install plugins
anyenvroot=`anyenv root`

if [ ! -d "${anyenvroot}/plugins" ]; then
  mkdir -p "${anyenvroot}/plugins"
fi

# install anyenv-update
if [ ! -d "${anyenvroot}/plugins/anyenv-update" ]; then
  git clone https://github.com/znz/anyenv-update.git "${anyenvroot}/plugins/anyenv-update"
fi

# install anyenv-git
if [ ! -d "${anyenvroot}/plugins/anyenv-git" ]; then
  git clone https://github.com/znz/anyenv-git.git "${anyenvroot}/plugins/anyenv-git"
fi
