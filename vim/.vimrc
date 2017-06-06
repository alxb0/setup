" Create a backup file
set nobackup
" Do not keep backup file
set nowritebackup
"Autodelete swapfile
set noswapfile


" Smart insert/delete tab at line start
set smarttab

" Spaces instead of tabs
set expandtab

" Number of spaces a <Tab> in the file counts for
set tabstop=2
" Number of spaces for a <Tab> in edition mode
set softtabstop=2
set shiftwidth=2

" Add indentation on {-like lines
set smartindent
" Copy indentation on newline when copying a line
set autoindent

" Show cursor line/column
set ruler

" Syntax higlighting
syntax enable

" Show matching brackets
set showmatch

" Show search matches as search is typed
set incsearch

" Show a line under the cursor line
set cursorline

" Set character encoding used in vim
set encoding=utf8

" Show a menu on tab completion for vim commands
set wildmenu

" Redraw screen less often
set lazyredraw

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" jk is escape
inoremap jk <esc>

" Auto-reload files
set autoread

" Set colorscheme
colorscheme darkblue

" Highlight in red/white lines where 80-width is broken
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
