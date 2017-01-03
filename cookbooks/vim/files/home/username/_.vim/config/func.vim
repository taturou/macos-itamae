"-------------------------------------------------
" ユーザー定義関数
"-------------------------------------------------

" Paste Mode
" コピペでインデントがおかしくなるのを防ぐ
" {{{
let paste_mode = 0 " 0 = normal, 1 = paste

function! Paste_on_off()
    if g:paste_mode == 0
        set paste
        let g:paste_mode = 1
    else
        set nopaste
        let g:paste_mode = 0
    endif
    return
endfunc
" }}}

" ビジュアルモードで囲って # を押すと、#if 0 〜 #endif で囲む
function! If0() range
    let sym = input("symbol:")
    call append(a:firstline-1, "#if 0 "  . sym)
    call append(a:lastline+1,  "#endif " . sym)
endfunction

function! IfA() range
    let sym = input("symbol:")
    call append(a:firstline-1, "#if "  . sym)
    call append(a:lastline+1,  "#endif /* " . sym . "*/")
endfunction

function! IfdefA() range
    let sym = input("symbol:")
    call append(a:firstline-1, "#if defined "  . sym)
    call append(a:lastline+1,  "#endif /* " . sym . "*/")
endfunction

function! IfndefA() range
    let sym = input("symbol:")
    call append(a:firstline-1, "#if !defined "  . sym)
    call append(a:lastline+1,  "#endif /* " . sym . "*/")
endfunction

" 行末のスペースを削除する
function! DeleteTailSpace()
    let save_cursor = getpos('.')
    silent exec '%s/ \+$//'
    call setpos(".", save_cursor)
endfunction

" 行頭のスペースをタブに変換する
function! RetabForHead()
    call DeleteTailSpace()
    let save_cursor = getpos('.')
    try
        while 1
            silent exec '%s/^\(\t\)*\zs \{4\}/\t/'
        endwhile
    catch
        echo "done"
    endtry
    call setpos(".", save_cursor)
endfunction

" HH:MM-HH:MM [tag] description
" というフォーマットの時、1行前の 2回目の HH:MM をコピーして行頭にペーストする
function! GetPrevEndTime()
    let cline = line(".")
    call cursor(cline - 1, 7)
    let tmp = @@
    silent normal v4ly
    let selected = @@
    let @@ = tmp
    call cursor(cline, 1)
    execute ":normal i" . selected . "-"
endfunction


