# .bashrc

# PATH
PATH=$PATH:/usr/local/bin:/usr/bin:/bin
PATH=$PATH:~/bin
PATH=$PATH:/opt/local/bin:/opt/local/sbin
export PATH

MANPATH=$MANPATH:/opt/local/share/man
export MANPATH

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

#stty -ixon

# unlimit stacksize for large aray in user mode
ulimit -Sc unlimited

# set aliases
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls -FG'
alias l='ls -lFG'
alias ll='ls -lFG'
alias la='ls -aFG'
alias lla='ls -laFG'
alias grep='grep --color'
alias less='less -M'

alias eng='LANG=C LANGUAGE=C LC_ALL=C'

#@ alias lv='lv -Ou8'
#@ alias less='lv -Ou8'

# user file-creation mask
umask 022

# prompt
#export PS1="[\u@\h \W]$WINDOW\$ "
export PS1="[\W]$WINDOW\$ "

# pager
#@ export PAGER=lv

# lang
#@ export LANG='ja_JP.UTF-8'
#@ export LC_ALL='ja_JP.UTF-8'
#@ export OUTPUT_CHARSET='ja_JP.UTF-8'
#@ export LESSCHARSET='ja_JP.UTF-8'

# greplist
function greplist
{
    grep -r $1 $2 $3 $4 $5 $6 $7 $8 $9 | grep -v '^Binary' | sed -e 's/:.*//' | uniq
}

# pstree
# for gnome-terminal
#  alias pstree="/usr/bin/pstree -a -A -s `ps x|grep terminal|grep -v grep|sed -e 's/\([0-9]\+\).*/\1/'`|sed -e 's/\(pstree\|sed\) .*/#####/'"
# for Tera term
#  alias pstree="/usr/bin/pstree -a -A `ps x|grep '\<screen\>'|grep -v grep|sed -e 's/\([0-9]\+\).*/\1/'`|sed -e 's/\(pstree\|sed\) .*/#####/'"
# for Putty
#alias pstree="/usr/local/bin/pstree -a -A `ps x|grep '\<SCREEN\>'|grep -v grep|sed -e 's/\([0-9]\+\).*/\1/'`|sed -e 's/\(pstree\|sed\) .*/#####/'"
# using ps (not pstree)
#alias pstree="/bin/ps aufx|grep `id -u`|sed -e 's/\(\<ps\>\|\<grep\>\|\<sed\>\).*/####/'"
# os x
alias pstree="pstree -p `ps x|grep screen|grep -v grep|sed -e 's/^ *//'|sed -e 's/ .*$//'`"

# macvim-kaoriya
#@ export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
#@ alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
#@ alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

# ctags
alias tags='ctags -R -B .; gtags'

# git
#@ export GIT_PAGER='lv -c'
alias gitb='git b'
alias gits='git s'
alias gitd='git d'
alias gitl='git l'
alias gitls='git ls'

# Subversion
export SVN_EDITOR="vim"

# network
alias netlisteners='lsof -i -P | grep LISTEN'

# Do sudo to a command, or do sudo to the last typed command if no argument given
alias sudo='/usr/bin/sudo env PATH="$PATH"'
s() {
    if [[ $# == 0 ]]; then
        sudo $(history -p '!!')
    else
        sudo "$@"
    fi
}

# rbenv
if which rbenv > /dev/null
then
    eval "$(rbenv init -)"
fi

## Ctrl-s しても画面への出力を停止させない
stty stop undef

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
