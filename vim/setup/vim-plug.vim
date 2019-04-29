call plug#begin('~/.vim/plugged')

" Files, Search, Navigation
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'sjl/gundo.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin'  }
Plug 'junegunn/fzf.vim'

" Code, Text
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/DeleteTrailingWhitespace'
Plug 'Raimondi/delimitMate'
Plug 'tmhedberg/matchit'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'craigemery/vim-autotag'
Plug 'majutsushi/tagbar'

" Windows, Buffers
Plug 'vim-scripts/BufOnly.vim'
Plug 'moll/vim-bbye'

" Colorschemes, Design
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mrded/vim-hi-cursor-words'
Plug 'dracula/vim', { 'as': 'dracula' }

" Languages
" =========

" Markdown
Plug 'junegunn/goyo.vim'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mustache/vim-mustache-handlebars'

" Ruby, Rails
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/ruby-matchit'

" HTML/CSS
Plug 'ap/vim-css-color'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'
Plug 'wavded/vim-stylus'
Plug 'slim-template/vim-slim'

" Infrastructure
Plug 'chase/vim-ansible-yaml'
Plug 'pearofducks/ansible-vim'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'fatih/vim-hclfmt'
Plug 'hashivim/vim-hashicorp-tools'
Plug 'stephpy/vim-yaml'
Plug 'ekalinin/Dockerfile.vim'

" Add plugins to &runtimepath
call plug#end()
