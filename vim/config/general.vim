set nocompatible                  " Make it not vi compatable
syntax enable                     " Turn on syntax highlighting
set showcmd                       " Display incomplete commands
set showmode                      " Display the mode you're in
set backspace=indent,eol,start    " Intuitive backspacing
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
set smartindent                   " Do smart auto indent for new line
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
set list                          " Show the dollar sign at the end of lines
set shortmess+=I                  " Disable splash screen message
set undofile                      " Saves undo after file closes"
set undolevels=1000               " How many undos
set undoreload=10000              " Number of lines to save for undo
set writebackup                   " Make a backup before overwritting a file
set backup                        " Make backup before overwrite
set backupcopy=auto               " When possible, rename the old file
set conceallevel=0                " show quotes in JSON
set copyindent                    " avoid tabbing on paste

" colorscheme
set background=dark
set guifont=Hack:h16
color dracula

" change the spelling error style
hi clear SpellBad
hi SpellBad cterm=underline

" Quickfix window
augroup quickfix
  autocmd!
  autocmd FileType qf setlocal nowrap
augroup END

" trigger autoread when inactive
autocmd CursorHold,CursorHoldI * checktime

" spell check
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.markdown setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell
autocmd BufRead,BufNewFile *.rdoc setlocal spell
autocmd FileType gitcommit setlocal spell
autocmd FileType text setlocal spell

" Filetype association
autocmd BufNewFile,BufRead *rc set filetype=vim
autocmd BufNewFile,BufRead Dockerfile* set filetype=dockerfile

" Indent Line
let g:indentLine_char = '┆'
let g:indentLine_enabled = 1

" vim-ansible-yaml ignore identation
let g:ansible_options = {'ignore_blank_lines': 0}

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

" JSX use .js files too
let g:jsx_ext_required = 0
