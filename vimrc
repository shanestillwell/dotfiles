set nocompatible               " be iMproved

set exrc														" Per directory .vimrc file
set secure														" Not sure
set encoding=utf8												" Unicode
set noswapfile													" No swap files please
set gfn=Hack\ Regular:h14										" Font
set hidden														" Hide buffers instead of deleting them
set clipboard=unnamed											" MacVim use clipboard contents
set shell=/bin/zsh
set backspace=indent,eol,start
set termguicolors

" Autocompletion
set wildmenu
set wildmode=list:longest,full
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc,tmp,*.scssc
set wmh=0

set relativenumber												"Relative numbers in the gutter

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

"Set the title to the filename
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70
set title

" TOhtml formatting options
let g:html_font = "Hack Regular"

" change the mapleader from \ to ,
let mapleader="\<Space>"

" Mappings
inoremap jj <ESC>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

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

" Spelling
set spelllang=en
set spellfile=$HOME/.vim/spell/en.utf-8.add

" Window Navigation
nmap <silent> <leader>wk <C-W>k
nmap <silent> <leader>wj <C-W>j
nmap <silent> <leader>wh <C-W>h
nmap <silent> <leader>wl <C-W>l

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

" https://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
" Jump to lines or end of file with Enter
" nnoremap <CR> G
" nnoremap <BS> gg

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

" https://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

call plug#begin('~/.vim/plugged')

" My Plugins here:
"
" original repos on github
"
" Git
Plug 'tpope/vim-fugitive'
let g:fugitive_github_domains = ['https://github.ua.com']
nnoremap <silent> <leader>gb :.Gbrowse<CR>
nnoremap <silent> <leader>gB :.Gbrowse!<CR>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gp :Gblame<CR>


" NERDTree
Plug 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

" Number gutter
Plug 'jeffkreeftmeijer/vim-numbertoggle'
map <F3> :call NumberToggle()<CR>

" Ack
"Plug 'mileszs/ack.vim'

" Ag
"Plug 'rking/ag.vim'

" Syntax checking
Plug 'scrooloose/syntastic'
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': ['python', 'javascript'],
                     \ 'passive_filetypes': ['markdown'] }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
let g:syntastic_aggregate_errors = 1

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_flow_exe = 'flow'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" Tabular
"Plug 'godlygeek/tabular'
"nmap <silent> <leader>t= :Tabularize /=<CR>
"nmap <silent> <leader>t: :Tabularize /:<CR>

" Whitespace 
Plug 'ntpeters/vim-better-whitespace'
let g:better_whitespace_filetypes_blacklist=['diff', 'gitcommit', 'unite', 'qf', 'help', 'markdown', 'graphql']

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
nnoremap <silent> <C-p> :FZF<CR>

let g:airline#extensions#tmuxline#enabled = 0

" For refacotring
Plug 'terryma/vim-multiple-cursors'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
set laststatus=2 " enable airline with only one screen

"Plug 'edkolev/tmuxline.vim'

" Javascript plugins
Plug 'pangloss/vim-javascript'
let g:javascript_conceal = 0

Plug 'jelera/vim-javascript-syntax'

" Comments ,cc
Plug 'scrooloose/nerdcommenter'

" JSON formatting :Jacinto
" UNUSED Plug 'alfredodeza/jacinto.vim'

" Match HTML Tags
Plug 'valloric/MatchTagAlways'

" JSX
Plug 'mxw/vim-jsx'
let g:jsx_ext_required = 0

" YAML syntax
Plug 'chase/vim-ansible-yaml'
au BufNewFile,BufRead *.yaml set filetype=ansible
au BufNewFile,BufRead *.yml set filetype=ansible

" SuperTab
Plug 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = '<C-n>'

" Snippets
Plug 'SirVer/ultisnips'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Snippets are separated from the engine. Add this if you want them:
" Plug 'honza/vim-snippets'

" UNUSED Plug 'tpope/vim-surround' " Surround items e.g. yisw( = surround current word with ()

" GraphQL formatting
Plug 'jparise/vim-graphql'


" My theme
Plug 'dracula/vim'

" Selecting
Plug 'terryma/vim-expand-region'

" Googling
"Plug 'szw/vim-g'

" Golang
"Plug 'fatih/vim-go'

" Add plugins to &runtimepath
call plug#end()

"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plug command are not allowed..



:colorscheme dracula
