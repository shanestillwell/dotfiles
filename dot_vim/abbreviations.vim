" In ~/.vim/abbreviations.vim (or where-ever you like)

" `expand('<sfile>:p')` gets the absolute path of the 
" current file that this is being executed from
let g:abolish_save_file = expand('<sfile>:p')

if !exists(":Abolish")
  finish
endif

" Typing `:Abolish! im I'm` will append the following
" to the end of this file:
"

Abolish {despa,sepe}rat{e,es,ed,ing,ely,ion,ions,or}  {despe,sepa}rat{}

Abolish teh the
Abolish udpate update
Abolish depature departure
