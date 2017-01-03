"-------------------------------------------------
" Basic 基本設定
"-------------------------------------------------

" 標準で認識する文字コード
"set encoding=japan
"set fileencodings=cp932,sjis,iso-2022-jp,euc-jp,dos,utf8
set fileencodings=CP932,utf8,euc-jp
set fileencoding=CP932
set fileformats=dos,unix
set fileformat=dos

" ヘルプは日本語を優先
set helplang=ja

" カーソルの上または下に表示する最小限の行数
set scrolloff=5

" 入力されているテキストの最大幅 「0」で無効
set textwidth=0

" バックアップの作成は行わない
set nobackup

" Vimの外部で変更されたことが判明したとき、自動的に読み直す
set autoread

" スワップファイルの作成は行わない
"set noswapfile

" swapファイルを作るディレクトリ
set directory=$HOME/.tmp/vim/swap

" 保存しないで他のファイルを表示することが出来るようにする
set hidden

" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start

" 自動整形の実行方法
"set formatoptions=lmoq
set formatoptions=l
autocmd FileType * setlocal formatoptions-=ro

" ビープ音 ビジュアルベルを使用しない
set vb t_vb=

" ファイルブラウザの初期ディレクトリ
set browsedir=buffer

" 特定のキーに行頭および行末の回りこみ移動を許可する設定
"  b - [Backspace]  ノーマルモード ビジュアルモード
"  s - [Space]      ノーマルモード ビジュアルモード
"  <  - [←]        ノーマルモード ビジュアルモード
"  >  - [→]         ノーマルモード ビジュアルモード
"  [ - [←]         挿入モード 置換モード
"  ] - [→]          挿入モード 置換モード
"  ~ - ~            ノーマルモード
"set whichwrap=b,s,<,>,[,],~

" コマンド (の一部) を画面の最下行に表示する
set showcmd

" カーソルが何行目の何列目に置かれているかを表示する
set ruler

" ステータス行を常に表示する
set laststatus=2

" コマンドラインに使われる画面上の行数
"set cmdheight=2

" Insertモード、ReplaceモードまたはVisualモードで最終行にメッセージを表示する
set showmode

"モードラインの無効化
set nomodeline

" すべてのモードでマウスが有効
"set mouse=a

" □とか○の文字があってもカーソル位置がずれないようにする
set ambiwidth=double

" vimgrep 実行時に自動的に quickfix-window を開く
autocmd QuickFixCmdPost *grep* cwindow

"------------------------------------------------------------
" ステータスライン
"------------------------------------------------------------
function! GetFileEF()
    let str = ''
    let fform = ''
    if &fileencoding == 'iso-2022-jp'
        let str = '[JIS]'
    elseif &fileencoding == 'utf-8'
        let str = '[UTF8]'
    elseif &fileencoding == 'cp932'
        let str = '[SJIS]'
    elseif &fileencoding == 'euc-jp'
        let str = '[EUC]'
    elseif &fileencoding == 'dos'
        let str = '[dos]'
    elseif &fileencoding == ''
        let str = '[-]'
    else
        let str = '[' . &fileencoding . ']'
    endif
    if &fileformat == 'unix'
        let fform = '[LF]'
    elseif &fileformat == 'mac'
        let fform = '[CR]'
    elseif &fileformat == 'dos'
        let fform = '[CRLF]'
    elseif &fileformat == ''
        let str = '[-]'
    else
        let fform = '[' . &fileformat . ']'
    endif
    let str = str . fform
    unlet fform
    return str
endfunction

set statusline=%<%f\ %m%r%h%w%{GetFileEF()}%=%l,%c%V%8P

