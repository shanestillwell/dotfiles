" be iMproved
set nocompatible

" Per directory .vimrc file
set exrc

" Default spacing
set autoindent
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" filetype plugin indent on
" set term=builtin_ansi
" set term=xterm-256color

" Not sure
set secure

" Unicode
set encoding=UTF-8

" No swap files please
set noswapfile

" Font
set gfn=Hack\ Nerd\ Font:h14
" set guifont=Hack_Nerd_Font_Regular:h14

" Hide buffers instead of deleting them
set hidden
"
" MacVim use clipboard contents
set clipboard=unnamed

set shell=/bin/zsh

" Make the backspace work like in most other programs:
set backspace=indent,eol,start

" crontab doesn't like this for some reason
" set termguicolors

" Read :help shortmess for everything else.
set shortmess=I

" Autocompletion
set wildmenu
set wildmode=list:longest,full
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc,tmp,*.scssc
set wmh=0
"
"Textmate like xhidden charaters
set nolist
set listchars=tab:▸\ ,eol:¬,trail:∙,extends:›,precedes:‹,nbsp:·

"Set the title to the filename
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70
set title

"Relative numbers in the gutter
set number relativenumber

"lowercase searches will be insensative
"search with one uppercase will be sensative
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set wrapscan
set cursorline

" Spelling
set spelllang=en
set spellfile=$HOME/.vim/spell/en.utf-8.add

" Add the dash (-) to the list of characters included in a 'word'
set isk+=-

" Safe copy
set backupcopy=yes
