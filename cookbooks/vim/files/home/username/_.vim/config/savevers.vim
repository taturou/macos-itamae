"------------------------------------------------------------
" savevers.vim
"------------------------------------------------------------

" 標準機能ではバックアップしない
set nobackup

" バックアップを作るディレクトリ
set backupdir=$HOME/.tmp/vim/backup

" savevers.vimのためにパッチモードにします
set patchmode=.clean

" カンマで区切られたバックアップを作成するファイル名です "*.c,*.h,*.vim"
let savevers_types = "*"

" バックアップファイルが書き込まれるディレクトリです
" ここでは、オプション"backupdir"と同じディレクトリにしています
let savevers_dirs = &backupdir

" バックアップファイルとの比較でウィンドウのサイズを変更する場合は0
let versdiff_no_resize=1

" ウィンドウのサイズを変更する場合にどれだけの幅までを許可するか
"let versdiff_no_resize=80

