call plug#begin('~/.vim/plugged')

" My Plugins here:
"
" Git
Plug 'tpope/vim-fugitive'
" let g:fugitive_github_domains = ['https://github.ua.com']
nnoremap <silent> <leader>gb :.Gbrowse<CR>
nnoremap <silent> <leader>gB :.Gbrowse!<CR>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gp :Gblame<CR>
nnoremap <silent> <leader>gs :Gstatus<CR>

" GBrowse
Plug 'tpope/vim-rhubarb'
Plug 'shumphrey/fugitive-gitlab.vim'

" NERDTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
nnoremap <C-l> :NERDTreeToggle<CR>


" Plug 'w0rp/ale'
" let g:ale_sign_error = '●' " Less aggressive than the default '>>'
" let g:ale_disable_lsp = 1 " Use Coc LSP
" let g:ale_sign_warning = '.'
" let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
" let g:ale_fixers = { 'javascript': [ 'eslint' ], 'typescript': ['eslint', 'prettier', 'tslint'] }
" let g:ale_linters = {
" \   'javascript': ['eslint'],
" \   'typescript': ['tsserver', 'tslint', 'eslint'],
" \   'vue': ['eslint']
" \}

" let g:ale_completion_enabled = 1

" Whitespace
"Plug 'ntpeters/vim-better-whitespace'
"let g:better_whitespace_filetypes_blacklist=['diff', 'gitcommit', 'unite', 'qf', 'help', 'graphql', 'markdown']

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
let g:fzf_preview_window = 'right:60%'
let g:fzf_layout = { 'down': '40%' }
nnoremap <silent> <C-p> :FZF<CR>

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlink
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --glob "!.git/*" --column --line-number --no-heading --fixed-strings --smart-case --hidden --follow  --color "always" '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)


" For refacotring
" Plug 'terryma/vim-multiple-cursors'

" Status line
" Plug 'vim-airline/vim-airline'
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tmuxline#enabled = 1
" let g:airline#extensions#default#section_truncate_width = {
"      \ 'a': 79,
"      \ 'b': 79,
"      \ 'x': 1,
"      \ 'y': 1,
"      \ 'z': 100,
"      \ 'warning': 80,
"      \ 'error': 80,
"      \ }
" let g:airline#extensions#default#section_truncate_width = {}
" let g:airline_statusline_ontop = 1

set laststatus=2 " enable airline with only one screen

" Javascript plugins
"Plug 'pangloss/vim-javascript'
"let g:javascript_conceal = 0

" Comments ,cc
" Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'

" Match HTML Tags
" Plug 'valloric/MatchTagAlways'
" Plug 'adelarsq/vim-matchit'

" SuperTab
" Plug 'ervandew/supertab'
" let g:SuperTabDefaultCompletionType = '<C-n>'

" Snippets
" Plug 'SirVer/ultisnips'

" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsListSnippets="<c-tab>"
" let g:UltiSnipsJumpForwardTrigger = /"<tab>"
" let g:UltiSnipsJumpBackwardTrigger = /"<s-tab>"


" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" " Snippets are separated from the engine. Add this if you want them:
" Plug 'honza/vim-snippets'

" Tab98
"https://tabnine.com/subscribe/
Plug 'zxqfl/tabnine-vim'

"yisw( = surround current word with ()
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" My theme
Plug 'dracula/vim', { 'as': 'dracula' }


" Abbreviation to the extreme
" https://github.com/tpope/vim-abolish
Plug 'tpope/vim-abolish' 

Plug 'sheerun/vim-polyglot'
let g:vue_disable_pre_processors=1

" Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'lepture/vim-jinja'

" Plug 'niftylettuce/vim-jinja'

Plug 'leafgarland/typescript-vim'

" Vim registers
Plug 'junegunn/vim-peekaboo'

" Plug 'jparise/vim-graphql'

" Plug 'posva/vim-vue'
Plug 'leafOfTree/vim-vue-plugin'

" Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'godlygeek/tabular' ", {'for': ['markdown', 'conf', '']}

" +/- in the gutter for git diffs
Plug 'airblade/vim-gitgutter'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-tsserver', 'coc-tabnine', 'coc-yaml', 'coc-json', 'coc-eslint']

Plug 'neoclide/coc-json'
Plug 'neoclide/coc-tabnine'
Plug 'neoclide/coc-eslint'
Plug 'neoclide/coc-yaml'
Plug 'neoclide/coc-tsserver'

" use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Dev Fonts
Plug 'ryanoasis/vim-devicons'
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" Startup screen
" Plug 'mhinz/vim-startify'

" post install (yarn install | npm install) then load plugin only for editing supported files
" Plug 'prettier/vim-prettier', {
"   \ 'do': 'yarn install',
"   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

" This plugins helps figure out why a piece of text is highlighted. Enable it,
" then stuck the cursor over some text in question and run the command
" call SyntaxAttr()
" Plug 'vim-scripts/SyntaxAttr.vim'

" Initialize plugin system
call plug#end()

