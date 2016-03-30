set nocompatible               " be iMproved

set exrc " Per directory .vimrc file
set secure " Not sure

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

" Font
set gfn=Hack\ Regular:h14

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
nmap <silent> <leader>ch :exec 'silent !open -a "/Applications/Google Chrome.app" % &'

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
set wrapscan

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

" File types

" Trailing whitespace {{{
" Only shown when not in insert mode so I don't go insane.
augroup trailing
    au!
    au InsertEnter * :set listchars-=trail:␣
    au InsertLeave * :set listchars+=trail:␣
augroup END

" JS folding
"augroup jsfolding
  "autocmd!
  "autocmd FileType javascript setlocal foldenable|setlocal foldmethod=syntax
"augroup END

" Basically open files unfolded
"set foldlevelstart=99

" Use space to expand/contract folds
nnoremap <Space> za

" HTML (tab width 2 chr, no wrapping
autocmd FileType markdown set sw=2
autocmd FileType markdown set ts=2
autocmd FileType markdown set sts=2
autocmd FileType markdown set textwidth=0
autocmd FileType markdown set omnifunc=htmlcomplete#CompleteTags
autocmd FileType markdown setlocal spell

" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Python (tab width 4 chr, wrap at 79th char)
autocmd FileType python set sw=4
autocmd FileType python set expandtab!
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


" Code Folding
"set foldmethod=syntax
"set foldlevelstart=0
" Code Folding
" syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
" setlocal foldmethod=syntax
" setlocal foldlevel=99
" let javaScript_fold=1
"let javaScript_fold=0         " JavaScript
"let perl_fold=1               " Perl
"let php_folding=1             " PHP
"let r_syntax_folding=1        " R
"let ruby_fold=1               " Ruby
"let sh_fold_enabled=1         " sh
"let vimsyn_folding='af'       " Vim script
"let xml_syntax_folding=1      " XML



" Mark down file type
au BufRead,BufNewFile *.md set filetype=markdown

" cshtml files as HTML
au BufRead,BufNewFile *.cshtml set filetype=html

" Vundle
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" My Plugins here:
"
" original repos on github
"
" Git
Plugin 'tpope/vim-fugitive'
let g:fugitive_github_domains = ['https://github.ua.com']

" NERDTree
Plugin 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

" Number gutter
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
map <F3> :call NumberToggle()<CR>

" Ack
Plugin 'mileszs/ack.vim'

" Syntax checking
Plugin 'scrooloose/syntastic'
let g:syntastic_check_on_open=1
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['markdown'] }

" Tabular
Plugin 'godlygeek/tabular'
nmap <silent> <leader>t= :Tabularize /=<CR>
nmap <silent> <leader>t: :Tabularize /:<CR>

" CtrlP for file finding
Plugin 'kien/ctrlp.vim'
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_custom_ignore = '\v[\/](bower_components|node_modules|target|dist|build)|(\.(swp|ico|git|svn))$'
let g:ctrlp_prompt_mappings = {
\ 'PrtClearCache()':      ['<c-r>'],
\ }

" For refacotring
Plugin 'terryma/vim-multiple-cursors'

" Status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
set laststatus=2 " enable airline with only one screen

" Javascript plugins
Plugin 'pangloss/vim-javascript'
let g:javascript_conceal = 0

Plugin 'jelera/vim-javascript-syntax'

" Comments ,cc
Plugin 'scrooloose/nerdcommenter'

" JSON formatting :Jacinto
Plugin 'alfredodeza/jacinto.vim'

" Hightlight unwanted spaces
Plugin 'bronson/vim-trailing-whitespace'

" Match HTML Tags
Plugin 'valloric/MatchTagAlways'

" JSX
Plugin 'mxw/vim-jsx'

" YAML syntax
Plugin 'chase/vim-ansible-yaml'
au BufNewFile,BufRead *.yaml set filetype=ansible

" YouCompleteMe
"Plugin 'Valloric/YouCompleteMe'
"let g:ycm_use_ultisnips_completer = 1
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" SuperTab
Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = '<C-n>'

" Snippets
Plugin 'SirVer/ultisnips'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" My theme
Plugin 'tpope/vim-vividchalk'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'altercation/vim-colors-solarized'

" vim-scripts repos
" non github repos
" git repos on your local machine (ie. when working on your own plugin)
" Plugin 'file:///Users/gmarik/path/to/plugin'
" ...
call vundle#end()             " required!
filetype plugin indent on     " required!
"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..



:colorscheme dracula
