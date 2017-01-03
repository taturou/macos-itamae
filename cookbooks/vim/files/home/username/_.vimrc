"-------------------------------------------------
" .vimrc
"-------------------------------------------------

" Vi互換OFF
set nocompatible    " Required!

"-------------------------------------------------
" NeoBundle
"-------------------------------------------------
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

" My Bundles here:
"
" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Lokaltog/vim-easymotion', '09c0cea8'   " This plugin is locked at revision 09c0cea8
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
NeoBundle 'rails.vim'
" Non github repos
NeoBundle 'git://git.wincent.com/command-t.git'
" Non git repos
"NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'

" add by h-morishita
NeoBundle "altercation/vim-colors-solarized"
NeoBundle "vim-scripts/taglist.vim"
NeoBundle "Shougo/vimshell.vim"
NeoBundle "fuenor/vim-statusline"
NeoBundle "aharisu/vim_goshrepl"
NeoBundle "amdt/vim-niji"

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

"-------------------------------------------------
" pathogen.vim
"-------------------------------------------------
" ~/.vim/bundle/ 以下のモジュールをすべて読み込む
call pathogen#runtime_append_all_bundles()

"-------------------------------------------------
" common
"-------------------------------------------------
" ファイル形式別プラグインのロードを有効化
filetype plugin on
filetype indent on

" ~/.vim/config/ 以下の設定ファイルをすべて読み込む
set runtimepath+=~/.vim/
runtime! config/*

