"--------------------------------------------------
" Goushe REPL in VIM
"
" http://d.hatena.ne.jp/aharisu/20120430/1335762494
"--------------------------------------------------

" 0 にすることで、入力履歴の始端と終端をつなげないようにする
let g:gosh_enable_ring_history = 1

" 1 にすることで、REPL内で自動use機能が働くようになる
let g:gosh_enable_auto_use = 0

" REPL内で出力確認を行う時間間隔（ミリ秒単位）
let g:gosh_updatetime = 1000

" 'h' の場合はREPLバッファが水平に分割されて開く
" 'v' を指定すれば垂直に分割されて開く
let g:gosh_buffer_direction = 'v'

" REPLバッファを垂直方向に開いた時の横幅
let g:gosh_buffer_width = 60

" REPLバッファを水平方向に開いた時の縦幅
let g:gosh_buffer_height = 40

