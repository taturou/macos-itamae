" Vim syntax file
" Language:     text file
" Maintainer:   TATUROU

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" 大文字小文字を区別しない
syn case ignore

"  '[' で始まる行はタイトル
syn match txtCaption /^\[[a-zA-Z].*/
syn match txtCaption /^-\{72}$/
syn match txtCaption /^\d\d:\d\d-\d\d:\d\d .*/

" 段落
syn match txtTitle  /^\s*=.*/
syn match txtTitle  /^\d\+\. .*/
syn match txtTitle  /^\s*-\{50}$/
syn match txtTitle2 /^\s*[■●].*/
syn match txtTitle2 /^\d\+\.\d\+\. .*/
syn match txtTitle2 /^\s*\* .*/
syn match txtCaption /^\d\+\.\d\+\.\(\d\+\.\)\+ .*/
syn match txtStage  /^\s*- /
syn match txtStage  /^\s*[・□○→↑↓←]/
syn match txtStage  /^\s*-> /
syn match txtStage  /^\s*<- /

" '>' で始まる行はコメント
syn match txtComment /^[ \t　]*[|>].*/
syn match txtComment /# .*/
syn region txtComment start="\/\*" end="\*\/"

" okada method
syn match txtCaption /^\[\d\+\].*/
syn match txtTitle2  /^\W*(\d\+).*/
syn match txtTitle3  /^\W*(\d\+-\d\+).*/
"syn match txtTitle2  /^\W*\*.*/

" 強調
syn match txtTodo /Bug\|BUG\|Issue\|ISSUE\|ToDo\|TODO\|FIXME\|※\|★\|☆/

" 関数名
syn match txtFunc /\w\+()/
syn match txtPP   /#\w\+/

" {} で囲まれてたらC言語
" (何故か } で終わってくれない）
"syn include @clang syntax/c.vim
"syn region txtClang start=/{/ end=/}/ contains=@clang

" Define the default highlighting.
hi def link txtCaption  Define
hi def link txtPP       Define
hi def link txtTitle    String
hi def link txtTitle2   Type
hi def link txtTitle3   Label
hi def link txtStage    Type
hi def link txtComment  Comment
hi def link txtTodo     String
hi def link txtFunc     Function

let b:current_syntax = "txt"
