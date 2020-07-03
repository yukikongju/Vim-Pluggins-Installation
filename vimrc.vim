" Pluggins Configs
  set nocompatible
  filetype off
  " filetype plugin indent on
  filetype plugin on

" Pluggins
  call plug#begin('~/.vim/plugged')

" utils
  Plug 'scrooloose/nerdtree'
  Plug 'vimwiki/vimwiki' " create linked text files and auto number

" colorscheme & syntax highlight
  Plug 'altercation/vim-colors-solarized' " colorscheme for text
  Plug 'itchyny/lightline.vim' " colorscheme for vim modes
  Plug 'scrooloose/nerdcommenter' " Change indentation behavior
 " Plug 'frazrepo/vim-rainbow' " make parenthesis and braket easier to read
  Plug 'terryma/vim-multiple-cursors' " edit multiple line simultaneously

" autocomplete
  Plug 'neoclide/coc.nvim', {'branch': 'release'} "autocomplete for all
  " Plug 'davidhalter/jedi' " Python autocomplete
  Plug 'tpope/vim-surround' " add tags, brackets, ... around selected lines
  Plug 'tpope/vim-repeat' " can use . with other plugins
  Plug 'vim-scripts/ClosePairs' " automatically close (),[],{},'', 
  Plug 'vim-scripts/c.vim' " c/c++ ide 

" git
  Plug 'tpope/vim-fugitive' "generate page to view commit message
  Plug 'airblade/vim-gitgutter' " view which line have changed
  Plug 'Xuyuanp/nerdtree-git-plugin' " view which files have been modified on tree

" html
  Plug 'alvan/vim-closetag' " use > to create closing tag

  call plug#end()

" Syntax
  syntax on

" Autocompletion
  set complete+=kspell
  set completeopt=menuone,longest
  set shortmess+=c
  set updatetime=300					" Faster Completion

" Cursor
  set scrolloff=3
  set backspace=indent,eol,start
  set matchpairs+=<:> " use % to jump between pairs
  set visualbell
  let &t_SI = "\<esc>[5 q" " I beam cursor for insert mode
  let &t_EI = "\<esc>[2 q" " block cursor for normal mode
  let &t_SR = "\<esc>[3 q" " underline cursor for replace mode

" Indentation 
  set wrap							" Display long lines as several
  set textwidth=79
  set formatoptions=tcqrn1
  set tabstop=4
  set shiftwidth=2
  set softtabstop=4
  set smarttab
  set autoindent
  set noshiftround

" Spelling
  " set spell
  " set spelllang=eng


" Swapfiles
  set nobackup
  set nowritebackup
  set noswapfile

" File Stats
  set ruler
  set confirm

" Security
  set modelines=0

" Status bar
  set laststatus=2
  set showmode
  set showcmd
  set wildmenu
  set nostartofline
  set signcolumn=no

" Rendering
  set ttyfast

" Encoding
  set encoding=utf-8

" Folding
  set foldmethod=syntax
  set foldlevelstart=1
  set foldnestmax=2

" Buffers
  set hidden

" Line numbers
  set number
  set relativenumber

" Searching
  set hlsearch
  set incsearch
  set ignorecase
  set smartcase
  set showmatch
  " map <leader><space> :let @/=''<cr> " clear search
  " nnoremap <leader><space> :noh<cr>
  nnoremap <esc><esc> :noh<return>


" Colorscheme
  syntax enable
  set t_Co=256
  set background=dark
  let g:solarized_termcolors=256
  let g:solarized_termtrans=1
  colorscheme solarized 
  let g:solarized_contrast = 'normal'
  let g:solarized_degrade = 0

" Choose Leader
  let mapleader="," "choose leader

" Remap vertical move
  nnoremap j gj
  nnoremap k gk

" Remap jump to beginning/end of line
  nnoremap B ^
  nnoremap E $

" Remap Save Session
  nnoremap <leader>s :mksession<CR>

" remap change split
  nmap <leader>h :wincmd h<CR>
  nmap <leader>j :wincmd j<CR>
  nmap <leader>k :wincmd k<CR>
  nmap <leader>l :wincmd l<CR>
  " nmap <leader>u :UndotreeShow<CR>

" remap tabs change
  nmap gt :tabnext<CR>
  nmap gT :tabprevious<CR>
  " nmap nt :tabnew<CR>

" vimrc shortcut
  nnoremap <leader>ev :tabnew $MYVIMRC<cr>       " edit vimrc
  nnoremap <leader>rv :source $MYVIMRC<cr>       " reload vimrv

" NERDTree Configs
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  nmap <leader>m :NERDTreeToggle<CR>

" vim-rainbow Configs
  let g:rainbow_active = 1

" NERDCommenter Configs
  let g:NERDSpaceDelims = 1
  let g:NERDCompactSexyComs = 1
  let g:NERDDefaultAlign = 'left'
  let g:NERDAltDelims_java = 1
  let g:NERDToggleCheckAllLines = 1

" coc.nvim Configs
  let g:coc_disable_startup_warning = 1
  let g:coc_global_extensions = [
		\ 'coc-clangd',
		\ 'coc-cmake',
		\ 'coc-css',
		\ 'coc-emoji',
		\ 'coc-html',
		\ 'coc-java',
		\ 'coc-jedi',
		\ 'coc-json',
		\ 'coc-markdownlint',
		\ 'coc-python',
		\ 'coc-prettier',
		\ 'coc-snippets',
		\ 'coc-todolist',
		\ 'coc-vimlsp',
		\ 'coc-yank',
		\ ]

  " inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\vTab>"        " autocomplete with tab
  nmap <silent> gd <Plug>(coc-definition)        " GoTo code navigation.
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references) inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

  nnoremap <silent> K :call <SID>show_documentation()<CR>  " Use K to show documentation in preview window.

  " use <tab> for trigger completion and navigate to the next complete item
  function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~ '\s'
  endfunction
  
  inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" vim-multiple-cursor Configs
  let g:multi_cursor_start_word_key      = '<C-n>'
  let g:multi_cursor_select_all_word_key = '<A-n>'
  let g:multi_cursor_start_key           = 'g<C-n>'
  let g:multi_cursor_select_all_key      = 'g<A-n>'
  let g:multi_cursor_next_key            = '<C-n>'
  let g:multi_cursor_prev_key            = '<C-p>'
  let g:multi_cursor_skip_key            = '<C-x>'
  let g:multi_cursor_quit_key            = '<Esc>'

" lightline Configs
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


" vim-gitgutter Configs
 " let g:gitgutter_git_executable = 'C:\Program Files\Git\bin\git.exe'
  
  " nmap ]h <Plug>(GitGutterNextHunk)
  " nmap [h <Plug>(GitGutterPrevHunk)

" nerdtree-git-plugin Configs
  let g:NERDTreeShowIgnoredStatus = 1
  let g:NERDTreeIndicatorMapCustom = {
	  \ "Modified"  : "✹",
	  \ "Staged"    : "✚",
	  \ "Untracked" : "✭",
	  \ "Renamed"   : "➜",
	  \ "Unmerged"  : "═",
	  \ "Deleted"   : "✖",
	  \ "Dirty"     : "✗",
	  \ "Clean"     : "✔︎",
	  \ 'Ignored'   : '☒',
	  \ "Unknown"   : "?"
	  \ }

" vim-closetag Configs
  let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
  let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
  let g:closetag_filetypes = 'html,xhtml,phtml'
  let g:closetag_xhtml_filetypes = 'xhtml,jsx'
  let g:closetag_emptyTags_caseSensitive = 1
  let g:closetag_regions = {
	  \ 'typescript.tsx': 'jsxRegion,tsxRegion',
	  \ 'javascript.jsx': 'jsxRegion',
	  \ }
  let g:closetag_shortcut = '>'
  let g:closetag_close_shortcut = '<leader>>'

