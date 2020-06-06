" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
"filetype off

call plug#begin('~/.vim/plugged')

" Folder Manager
Plug 'scrooloose/nerdtree' 

" Aesthetics
Plug 'altercation/vim-colors-solarized' " colorscheme for text
Plug 'frazrepo/vim-rainbow' " make parenthesis and braket easier to read
Plug 'itchyny/lightline.vim' " colorscheme for vim modes


" Syntax
Plug 'airblade/vim-gitgutter' " show modified lines in git
Plug 'scrooloose/nerdcommenter' " Change indentation behavior
Plug 'tpope/vim-fugitive' " Git Command

" Autocomplete
"Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Vocabulary 
Plug 'sheerun/vim-polyglot'


call plug#end()

" Turn on syntax highlighting
syntax on 

" Autocompletion
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c

" For plugins to load correctly
"filetype plugin indent on
filetype plugin on

" add python autocomplete
let g:pydiction_location = '/home/user/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 3

" Leader key
let mapleader = ","

" Security
set modelines=0

"Line numbers
set relativenumber
set number

" Folding
set foldmethod=indent
set foldlevel=99

" Desactivate swapfiles
set nobackup
set nowritebackup
set noswapfile

" Show file stats
set ruler
set confirm

" Cursor
"set cursorline
set cursorcolumn
set visualbell
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim
set ruler
let &t_SI = "\<esc>[5 q" " I beam cursor for insert mode
let &t_EI = "\<esc>[2 q" " block cursor for normal mode
let &t_SR = "\<esc>[3 q" " underline cursor for replace mode


" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬

" Encoding
set encoding=utf-8

" Indentation 
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=2
set softtabstop=4
set smarttab
set autoindent
set noshiftround

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2
"
" Last line
set showmode
set showcmd
set wildmenu
set nostartofline
set cmdheight=2

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search


" move word to word in insert mode
"inoremap <C-h> w

" remap change tabs
nmap <leader>h :wincmd h<CR>
nmap <leader>j :wincmd j<CR>
nmap <leader>k :wincmd k<CR>
nmap <leader>l :wincmd l<CR>
nmap <leader>u :UndotreeShow<CR>
nmap <C-p> :Files<CR>
nmap <s-p> :Rg<CR>
nnoremap k gk
nnoremap j gj
" jump end/beginning of the line
nnoremap B ^
nnoremap E $

" Formatting
map <leader>q gqip
map <leader>l :set list!<CR> " Toggle tabs and EOL

" ------------------------------------------------------------------
" vim-colors-solarized Configs
" -----------------------------------------------------------------

" Color scheme (terminal)

set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized 

" ----------------------------------------------------------------
" NERDTree Config
" ---------------------------------------------------------------------

" Open NERDTree automatically if vim is empty
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close NERDTree if NERDTree is only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ------------------------------------------------------------------
"  vim-rainbow config
" -------------------------------------------------------------------

" activate rainbow brackets
let g:rainbow_active = 1

" -------------------------------------------------------------------
"  git-gutter configs
"  ------------------------------------------------------------------

" ------------------------------------------------------------------
"  lightline Configs
"  -----------------------------------------------------------------

" colorscheme configuration
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'helloworld' ] ]
      \ },
      \ 'component': {
      \   'helloworld': ''
      \ },
      \ }

" ---------------------------------------------------------------------
"  NERDCommentor Configs
"  --------------------------------------------------------------------

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 0
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" vmap ++ <plug>NERDCommenterToggle
" nmap ++ <plug>NERDCommenterToggle

" ---------------------------------------------------------------------
"  NeoComplete.vim Configs
"  --------------------------------------------------------------------
"let g:deoplete#enable_at_startup = 1




" ---------------------------------------------------------------------
" Coc Configs
"  --------------------------------------------------------------------

"coc config
let g:coc_global_extensions = [
	  \  'coc-snippets',
	  \  'coc-python',
	  \	   'coc-tsserver',
	  \	   'coc-emoji',
	  \	   'coc-eslint',
	  \	   'coc-prettier',
	  \ 'coc-tslint',
	  \ 'coc-tslint-plugin',
	  \ 'coc-css',
	  \ 'coc-json', 
	  \ 'coc-pyls',
	  \ 'coc-yaml', 
	  \ ]

let g:coc_disable_startup_warning = 1
set completeopt=longest,menuone
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use `lp` and `ln` for navigate diagnostics
nmap <silent> <leader>lp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>ln <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> <leader>ld <Plug>(coc-definition)
nmap <silent> <leader>lt <Plug>(coc-type-definition)
nmap <silent> <leader>li <Plug>(coc-implementation)
nmap <silent> <leader>lf <Plug>(coc-references)

" Remap for rename current word
nmap <leader>lr <Plug>(coc-rename)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" ---------------------------------------------------------------------
" Vim-multiple-cursors Configs 
"  --------------------------------------------------------------------

"desactivate mapping
"let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

