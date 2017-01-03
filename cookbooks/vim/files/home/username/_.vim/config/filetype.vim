"-------------------------------------------------
" ファイルタイプ別設定
"-------------------------------------------------

augroup filetypedetect
au BufNewFile,BufRead *.txt setf txt
au BufNewFile,BufRead *.mem setf txt
au BufNewFile,BufRead *.rd setf rd
au BufNewFile,BufRead *.jax setf help_ja
augroup END

" タブサイズ
au FileType ruby set ts=2 sw=2 expandtab
au FileType eruby set ts=2 sw=2 expandtab
au FileType html set ts=2 sw=2 expandtab
au FileType css set ts=2 sw=2 expandtab
au FileType coffee set ts=2 sw=2 expandtab
au FileType javascript set ts=2 sw=2 expandtab
