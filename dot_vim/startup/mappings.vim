" change the mapleader from \ to ,

let mapleader="\<Space>"

" Mappings
inoremap jj <ESC>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Force quite
nmap <silent> Q :q!<CR>

" Open package.json file
nmap <silent> <leader>pjs :edit ./package.json<CR>

" Capitalization
" gcw        - capitalize word (from cursor position to end of word)
" gcW        - capitalize WORD (from cursor position to end of WORD)
" gciw       - capitalize inner word (from start to end)
" gciW       - capitalize inner WORD (from start to end)
" gcis       - capitalize inner sentence
" gc$        - capitalize until end of line (from cursor postition)
" gcgc       - capitalize whole line (from start to end)
" gcc        - capitalize whole line
" {Visual}gc - capitalize highlighted text
if (&tildeop)
  nmap gcw guw~l
  nmap gcW guW~l
  nmap gciw guiw~l
  nmap gciW guiW~l
  nmap gcis guis~l
  nmap gc$ gu$~l
  nmap gcgc guu~l
  nmap gcc guu~l
  vmap gc gu~l
else
  nmap gcw guw~h
  nmap gcW guW~h
  nmap gciw guiw~h
  nmap gciW guiW~h
  nmap gcis guis~h
  nmap gc$ gu$~h
  nmap gcgc guu~h
  nmap gcc guu~h
  vmap gc gu~h
endif

" Make the word UPPERCASE
nnoremap <silent> <leader>U viwU

" Make the word Lowercase
nnoremap <silent> <leader>u viwu

nnoremap <silent> <leader>s 1z=

" Window Navigation
nmap <silent> <leader>wk <C-W>k
nmap <silent> <leader>wj <C-W>j
nmap <silent> <leader>wh <C-W>h
nmap <silent> <leader>wl <C-W>l

" Open up current file in chrome
nmap <silent> <leader>ch :exec 'silent !mark % &'
" nmap <silent> <leader>ch :exec 'silent !open -a '"/applications/google chrome.app" % &'

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv


"COC
" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Copy relative path
map <Leader>fr :let @+ = expand("%")<CR>
" Copy full path
map <Leader>fp :let @+ = expand("%:p")<CR>
" Copy file name
map <Leader>fn :let @+ = expand("%:t")<CR>
