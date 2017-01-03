"-------------------------------------------------
" Mappings キーマッピング
"-------------------------------------------------

" U で :redo
map U :redo<CR>

" 現在時刻を入力する
"   入力モードで C-d,C-d すると日付を入力
imap <silent> <C-D><C-D> <C-R>=strftime('%Y-%m-%d %a')<CR>
"   入力モードで C-t,C-t すると時刻を入力
imap <silent> <C-T><C-T> <C-R>=strftime('%H:%M')<CR>
"   ノーマルモードで C-r,C-r すると前回の終了時刻を入力
nmap <silent> <C-R><C-R> :call GetPrevEndTime()<CR>

"-------------------------------------------------
" Move 移動設定
"-------------------------------------------------

" insert mode での移動
inoremap <C-e> <END>
inoremap <C-a> <HOME>
"inoremap <C-n> <Down>
"inoremap <C-p> <Up>    " 文字補完とかぶる
"inoremap <C-h> <Left>  " BackSpace とかぶる
"inoremap <C-l> <Right>

"------------------------------------------------------------
" タグジャンプ
" (タグの生成は $ gtags -v)
"------------------------------------------------------------
" C-] でジャンプ後、次の検索結果へ飛ぶ
map <C-n> :cn<CR>
" C-] でジャンプ後、前の検索結果へ飛ぶ
map <C-p> :cp<CR>
" C-g で gtags ジャンプ (^] は C-v C-] で入力)
map  :GtagsCursor<CR>
" C-r で参照元へジャンプ
"map  :Gtags -r <CR>
map  :Gtags -r <CR>
" 候補が複数ある場合は一覧表示
"nnoremap <C-]> g<C-]>

"-------------------------------------------------
" Function ユーザー定義関数
"-------------------------------------------------

" Paste Mode <F10>
nnoremap <silent> <F10> :call Paste_on_off()<CR>
set pastetoggle=<F10>

