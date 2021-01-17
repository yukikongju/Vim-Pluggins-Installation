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
  Plug 'lfos/calcurse' "Calendar scheduling app
  Plug 'honza/vim-snippets' " snippets for various languages
  Plug 'vifm/vifm' " File mange with curses interface
  " Plug 'christoomey/vim-tmux-navigator' 
  " Plug 'blindFS/vim-taskwarrior' " taskwarrior task manager
  Plug 'itchyny/calendar.vim' " calendar
  Plug 'junegunn/fzf' " command line fuzzy finder"
  " Plug 'junegunn/goyo.vim' " make vim cleaner
  " Plug 'taglist.vim' " view variables, functions with :Tlist
  Plug 'mbbill/undotree' " view all undo history
  " Plug 'vim-scripts/taglist.vim'
  " Plug 'yegappan/taglist'
  
" colorscheme & syntax highlight
  Plug 'altercation/vim-colors-solarized' " colorscheme for text
  Plug 'itchyny/lightline.vim' " colorscheme for vim modes
  Plug 'scrooloose/nerdcommenter' " Change indentation behavior
  Plug 'morhetz/gruvbox' " grubbox color scheme
 " Plug 'frazrepo/vim-rainbow' " make parenthesis and braket easier to read
  " Plug 'terryma/vim-multiple-cursors' " edit multiple line simultaneously
  " Plug 'skammer/vim-css-color' " Highlight colors in css files
  Plug 'ap/vim-css-color' " Highlight colors in css files

" autocomplete
  Plug 'neoclide/coc.nvim', {'branch': 'release'} "autocomplete for all
  " Plug 'ycm-core/YouCompleteMe' "you complete me autocomplete with linter"
  " Plug 'davidhalter/jedi' " Python autocomplete
  " Plug 'mattn/emmet-vim' " autocomplete for HTML, CSS, JS
  " Plug 'tpope/vim-surround' " add tags, brackets, ... around selected lines
  Plug 'tpope/vim-repeat' " can use . with other plugins
  " Plug 'vim-scripts/ClosePairs' " automatically close (),[],{},'', 
  Plug 'jiangmiao/auto-pairs' " insert and delete brackets in pairs
  Plug 'vim-scripts/c.vim' " c/c++ ide 
  " Plug 'rust-lang/rust.vim' " Rust autocompletion

" debugger
  " Plug 'puremourning/vimspector' "Debugger
  " Plug 'szw/vim-maximizer' "another debugger

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
  " set textwidth=79
  set formatoptions=tcqrn1
  set tabstop=4
  set shiftwidth=2
  set softtabstop=4
  set smarttab
  " set smartindent
  set autoindent
  set noshiftround
  map <leader>q gg=G<CR>			" indent whole file with gg=G

" Spelling
  " set spell
  " set spelllang=eng

" Mouse
  " set mouse=a

" Swapfiles
  set nobackup
  set nowritebackup
  set noswapfile

" Keybinding for date
  map <F2> :r! date +"\%A \%d \%B \%Y" <CR>

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
  set signcolumn=yes

" Rendering
  set ttyfast

" Encoding
  set encoding=utf-8

" Folding
  set foldmethod=syntax
  set foldlevelstart=1
  set foldnestmax=2
  let g:markdown_folding=11

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
  " nnoremap <esc><esc> :noh<return><CR>
  nnoremap <esc><esc> :noh<CR>

" Colorscheme
  syntax enable
  set t_Co=256
  set background=dark
  " let g:solarized_termcolors=256
  " let g:solarized_termtrans=1
  " colorscheme solarized 
  colorscheme gruvbox
  " highlight Normal ctermbg=NONE
  " highlight nonText ctermbg=NONE
  " let g:solarized_contrast = 'normal'
  " let g:solarized_degrade = 0

" Choose Leader
  let mapleader="," "choose leader

" Remap vertical move
  nnoremap j gj
  nnoremap k gk

" Remap jump to beginning/end of line
  nnoremap B ^
  nnoremap E $

" Remap Save Session
  nnoremap <leader>s :mksession<CR>			" we can save session with mks!

" remap change windows split quickly
  nmap <leader>h :wincmd h<CR>
  nmap <leader>j :wincmd j<CR>
  nmap <leader>k :wincmd k<CR>
  nmap <leader>l :wincmd l<CR>
  nnoremap <silent> <leader>+ :vertical resize +5<CR>
  nnoremap <silent> <leader>- :vertical resize +5<CR>

" remap tabs change
  nmap gt :tabnext<CR>
  nmap gT :tabprevious<CR>
  nmap <leader>nt :tabe<CR>				" create new tab

"  remapping replace
  " nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>    " local replace
  " nnoremap gR gD:%s/<C-R>///gc<left><left><left>        " For global replace

" Abbreviations for JAVA
  " abbr psvm public static void main(String[] args){<CR>}<esc>O

" vimrc shortcut
  nnoremap <leader>ev :tabnew $MYVIMRC<cr>       " edit vimrc
  nnoremap <leader>rv :source $MYVIMRC<cr>       " reload vimrv

" fzf Configs
  " nnoremap <leader>f :Files<CR> " shortcut to find files


" NERDTree Configs
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  nmap <leader>m :NERDTreeToggle<CR>

" vim-rainbow Configs
  let g:rainbow_active = 1

" Undotree Configs
  nnoremap <leader>u :UndotreeShow<CR>

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
		\ 'coc-java',
		\ 'coc-jedi',
		\ 'coc-prettier',
		\ 'coc-pyright',
		\ 'coc-python',
		\ 'coc-snippets',
		\ 'coc-todolist',
		\ 'coc-vimlsp',
		\ ]

		" \ 'coc-word',
		" \ 'coc-markdownlint',
		" \ 'coc-json',
		" \ 'coc-css',
		" \ 'coc-html',
		" \ 'coc-python', "deprecated
		" \ 'coc-emoji',
		" \ 'coc-yank',

  " inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\vTab>"        " autocomplete with tab
  nmap <silent> gd <Plug>(coc-definition)        " GoTo code navigation.
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references) inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Symbol renaming.
  nmap <leader>rn <Plug>(coc-rename)

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

" coc-vimlsp Configs
let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help'
      \]

" vim-multiple-cursor Configs
  let g:multi_cursor_start_word_key      = '<C-n>'
  let g:multi_cursor_select_all_word_key = '<A-n>'
  let g:multi_cursor_start_key           = 'g<C-n>'
  let g:multi_cursor_select_all_key      = 'g<A-n>'
  let g:multi_cursor_next_key            = '<C-n>'
  let g:multi_cursor_prev_key            = '<C-p>'
  let g:multi_cursor_skip_key            = '<C-x>'
  let g:multi_cursor_quit_key            = '<Esc>'

" Debugger remaps
  " nnoremap <leader>m :MaximizerToggle!<CR>
  nnoremap <leader>dd :call vimspector#Launch()<CR>
  nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
  nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
  nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
  nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
  nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
  nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
  nnoremap <leader>de :call vimspector#Reset()<CR>

  nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

  nmap <leader>dl <Plug>VimspectorStepInto
  nmap <leader>dj <Plug>VimspectorStepOver
  nmap <leader>dk <Plug>VimspectorStepOut
  nmap <leader>d_ <Plug>VimspectorRestart
  nnoremap <leader>d<space> :call vimspector#Continue()<CR>

  nmap <leader>drc <Plug>VimspectorRunToCursor
  nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
  nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint

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

			  " \ 'colorscheme': 'solarized',

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


  " T-mux 
  let g:tmux_navigator_no_mappings = 1
  nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
  nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
  nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
  nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
  nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
  " Write all buffers before navigating from Vim to tmux pane
  " let g:tmux_navigator_save_on_switch = 2
  " Disable tmux navigator when zooming the Vim pane
  let g:tmux_navigator_disable_when_zoomed = 1

" vim wiki
  " let g:vimwiki_folding='syntax' "list, '', expr, syntax, 
  let g:vimwiki_folding='expr' "list, '', expr, syntax, 
  
  " let g:vimwiki_use_calendar = 1
  " let g:vimwiki_list = [{'auto_diary_index': 1}] " autocomplete diary index
  " let wiki_1.diary_rel_path = '.'
  " nnoremap  <leader>w<leader>w " create new diary note for the day
  " nnoremap  <leader>wi " show all diary entries
  " nnoremap  <leader>w<leader>i " update entries
  " let g:vimwiki_list = [
  "                       \{'path': '~/Documents/VimWiki/personal.wiki'},
  "                       \{'path': '~/Documents/VimWiki/tech.wiki'}
                \]
  " let g:vimwiki_list = [{'path': '~/vimwiki/',
  "                     \ 'syntax': 'markdown', 'ext': '.wiki'}]

" vim.calendar
  let g:calendar_task_delete = 1

" TagList options
  " let Tlist_Close_On_Select = 1 "close taglist window once we selected something
  " let Tlist_Exit_OnlyWindow = 1 "if taglist window is the only window left, exit vim
  " let Tlist_Show_Menu = 1 "show Tags menu in gvim
  " let Tlist_Show_One_File = 1 "show tags of only one file
  " let Tlist_GainFocus_On_ToggleOpen = 1 "automatically switch to taglist window
  " let Tlist_Highlight_Tag_On_BufEnter = 1 "highlight current tag in taglist window
  " let Tlist_Process_File_Always = 1 "even without taglist window, create tags file, required for displaying tag in statusline
  " let Tlist_Use_Right_Window = 1 "display taglist window on the right
  " let Tlist_Display_Prototype = 1 "display full prototype instead of just function name
  " " "let Tlist_Ctags_Cmd = /path/to/exuberant/ctags

  " nnoremap <F5> :TlistToggle
  " nnoremap <F6> :TlistShowPrototype

