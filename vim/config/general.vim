let mapleader="\\"                " Leader key!
set nocompatible                  " Make it not vi compatable
syntax enable                     " Turn on syntax highlighting
set showcmd                       " Display incomplete commands
set showmode                      " Display the mode you're in
set backspace=indent,eol,start    " Intuitive backspacing
set hidden                        " Handle multiple buffers better
set wildmenu                      " Enhanced command line completion
set wildmode=list:longest         " Complete files like a shell
set ignorecase                    " Case-insensitive searching
set number                        " Show line numbers
set ruler                         " Show cursor position
set incsearch                     " Highlight matches as you type
set hlsearch                      " Highlight matches
set wrap                          " Turn on line wrapping
set scrolloff=9                   " Show 3 lines of context around the cursor
set title                         " Set the terminal's title
set visualbell                    " No beeping
set clipboard=unnamed             " Clipboard sharing
set guioptions-=r                 " Remove right scrollbar
set guioptions-=L                 " Remove left scrollbar
set tabstop=2                     " Spaces per tab
set smarttab                      " Better tab bhaviour
set autoindent                    " Indent like the line above
ret smartindent                   " Do smart auto indent for new line
set autoread                      " Read changes if file changed
set shiftwidth=2                  " Spacing to shift when using >>
set softtabstop=2                 " How spaces to use for <tab> key in insert
set expandtab                     " Use spaces instead of \t
set colorcolumn=80                " Column bar
set cursorline                    " Highlight the current line
filetype on                       " Enable filetype detection
filetype indent on                " Enable filetype-specific indenting
filetype plugin on                " Enable filetype-specific plugins
set hidden                        " Hide buffer when new files are opened
set history=1000                  " Increase the history to store
set list                          " Better whitespce highlighting
set shortmess+=I                  " Disable splash screen message

" Colorscheme
set background=dark
colorscheme codeschool
set guifont=Source\ Code\ Pro\ for\ Powerline:h16

" Quickfix window
augroup quickfix
  autocmd!
  autocmd FileType qf setlocal nowrap
augroup END

" spell check
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.markdown setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell
autocmd BufRead,BufNewFile *.rdoc setlocal spell
autocmd FileType gitcommit setlocal spell
autocmd FileType text setlocal spell

" Filetype association
au BufNewFile,BufRead *rc set filetype=vim

" Folding
au FileType javascript call JavaScriptFold()
set foldmethod=syntax
set nofoldenable

" Indent Line
let g:indentLine_char = '┆'
let g:indentLine_enabled = 1

" Return to last edit position when opening files
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

" Placing the temp files in a central place
set backupdir=~/.vim/temp/backup//
set directory=~/.vim/temp/swap//
set undodir=~/.vim/temp/undo//

" Ensure the default matchit with vim is working
runtime! macros/matchit.vim
