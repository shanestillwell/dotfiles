set nocompatible               " be iMproved

" change the mapleader from \ to ,
let mapleader=","

" Mappings 
inoremap jj <ESC>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Window Navigation
nmap <silent> <leader>wk <C-W>k
nmap <silent> <leader>wj <C-W>j
nmap <silent> <leader>wh <C-W>h
nmap <silent> <leader>wl <C-W>l

" No swap files please
set noswapfile

" Hide buffers instead of deleting them
set hidden

" Autocompletion
set wildmenu
set wildmode=list:longest,full
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc,tmp,*.scssc
set wmh=0

" MacVim use clipboard contents
set clipboard=unnamed

" Open up current file in chrome
nmap <silent> <leader>ch :exec 'silent !open -a "Google Chrome" % &'

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


"autocomplete Parenthesis
"When you type an open brace, this will automatically
"insert a closing brace on the same line, after the cursor.
"If you quickly hit Enter after the open brace, (to begin
"a code block), the closing brace will be inserted on the
"line below the cursor. If you quickly press the open brace
"key again after the open brace, Vim won't insert anything extra,
" you'll just get a single open brace. Finally, if you quickly
"type an open and close brace, Vim will not do anything special.
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

"Relative numbers in the gutter
set relativenumber

"lowercase searches will be insensative
"search with one uppercase will be sensative
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

"Textmate like xhidden charaters
set nolist
set listchars=tab:▸\ ,eol:¬

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

"Filetype
set filetype=on
filetype plugin on
filetype indent on

set ai
set ts=4
set sts=4
set et
set sw=4
set textwidth=79

" File types

" Trailing whitespace {{{
" Only shown when not in insert mode so I don't go insane.
augroup trailing
    au!
    au InsertEnter * :set listchars-=trail:␣
    au InsertLeave * :set listchars+=trail:␣
augroup END

" HTML (tab width 2 chr, no wrapping
autocmd FileType markdown set sw=2
autocmd FileType markdown set ts=2
autocmd FileType markdown set sts=2
autocmd FileType markdown set textwidth=0
autocmd FileType markdown set omnifunc=htmlcomplete#CompleteTags

" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Python (tab width 4 chr, wrap at 79th char)
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4
autocmd FileType python set textwidth=79
autocmd FileType python set omnifunc=pythoncomplete#Complete

" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2
autocmd FileType css set textwidth=79
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" JavaScript (tab width 4 chr, wrap at 79th)
autocmd FileType javascript set sw=2
autocmd FileType javascript set ts=2
autocmd FileType javascript set sts=2
autocmd FileType javascript set textwidth=79
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" Mark down file type
au BufRead,BufNewFile *.md set filetype=markdown

" Vundle
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"
" Git
Bundle 'tpope/vim-fugitive'

" HTML 
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" NERDTree
Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

" Number gutter
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
map <F3> :call NumberToggle()<CR>

" Tagbar
Bundle 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

" Ack
Bundle 'mileszs/ack.vim'

" Syntax checking
Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['markdown'] }

" Tabular
Bundle 'godlygeek/tabular'
nmap <silent> <leader>t= :Tabularize /=<CR>
nmap <silent> <leader>t: :Tabularize /:<CR>

" CtrlP for file finding
Bundle 'kien/ctrlp.vim'

" For refacotring
Bundle 'terryma/vim-multiple-cursors'

" Status line
Bundle 'bling/vim-airline'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_branch_prefix = ''
set laststatus=2 " enable airline with only one screen


" Comments ,cc
Bundle 'scrooloose/nerdcommenter'

" JSON formatting :Jacinto
Bundle 'alfredodeza/jacinto.vim'

" My theme
Bundle 'tpope/vim-vividchalk'
:colorscheme vividchalk

" vim-scripts repos
" non github repos
" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
