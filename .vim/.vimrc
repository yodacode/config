" fix indentation
filetype on
filetype indent on
filetype plugin on

" Mouse 
set mouse=a

" Syntax 
syntax on
set number
set hidden
set ignorecase
set autoindent

" UTF-8 as default encoding
set fileencoding=utf-8
set encoding=utf-8

" Use the appropriate number of spaces to insert a tab
set expandtab

" Number of spaces that a tab in the file counts for
set tabstop=2

" Number of spaces to use for each step of (auto)indent
set shiftwidth=2

" Number of spaces that a <Tab> counts for while performing editing operations
set softtabstop=2

" When a bracket is inserted, briefly jump to the matching one
set showmatch

set clipboard+=unnamed
" Use 256 colors in Console mode if we think the terminal supports it
if &term =~? 'mlterm\|xterm'
  set t_Co=256
endif

" Define color scheme
colorscheme molokai
 

