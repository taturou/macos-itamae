" Vim syntax file
" Language:     text file
" Maintainer:   TATUROU

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" �啶������������ʂ��Ȃ�
syn case ignore

"  '[' �Ŏn�܂�s�̓^�C�g��
syn match txtCaption /^\[[a-zA-Z].*/
syn match txtCaption /^-\{72}$/
syn match txtCaption /^\d\d:\d\d-\d\d:\d\d .*/

" �i��
syn match txtTitle  /^\s*=.*/
syn match txtTitle  /^\d\+\. .*/
syn match txtTitle  /^\s*-\{50}$/
syn match txtTitle2 /^\s*[����].*/
syn match txtTitle2 /^\d\+\.\d\+\. .*/
syn match txtTitle2 /^\s*\* .*/
syn match txtCaption /^\d\+\.\d\+\.\(\d\+\.\)\+ .*/
syn match txtStage  /^\s*- /
syn match txtStage  /^\s*[�E������������]/
syn match txtStage  /^\s*-> /
syn match txtStage  /^\s*<- /

" '>' �Ŏn�܂�s�̓R�����g
syn match txtComment /^[ \t�@]*[|>].*/
syn match txtComment /# .*/
syn region txtComment start="\/\*" end="\*\/"

" okada method
syn match txtCaption /^\[\d\+\].*/
syn match txtTitle2  /^\W*(\d\+).*/
syn match txtTitle3  /^\W*(\d\+-\d\+).*/
"syn match txtTitle2  /^\W*\*.*/

" ����
syn match txtTodo /Bug\|BUG\|Issue\|ISSUE\|ToDo\|TODO\|FIXME\|��\|��\|��/

" �֐���
syn match txtFunc /\w\+()/
syn match txtPP   /#\w\+/

" {} �ň͂܂�Ă���C����
" (���̂� } �ŏI����Ă���Ȃ��j
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
