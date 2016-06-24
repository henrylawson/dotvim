" General
" =======
" NeoBundle
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

" Files, Search, Navigation
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'rizzatti/dash.vim'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'duggiefresh/vim-easydir'

" Code, Text
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/DeleteTrailingWhitespace'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'tmhedberg/matchit'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'godlygeek/tabular'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'hashivim/vim-hashicorp-tools'

" Windows, Buffers
NeoBundle 'vim-scripts/BufOnly.vim'
NeoBundle 'moll/vim-bbye'

" Colorschemes, Design
NeoBundle 'bling/vim-airline'
NeoBundle 'ihacklog/HiCursorWords'
NeoBundle 'reedes/vim-colors-pencil'

" Languages
" =========

" Markdown
NeoBundle 'junegunn/goyo.vim'

" JavaScript
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'mustache/vim-mustache-handlebars'

" Ruby, Rails
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'vim-scripts/ruby-matchit'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'thoughtbot/vim-rspec'

" Clojure
NeoBundle 'guns/vim-clojure-static'

" HTML/CSS
NeoBundle 'othree/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'groenewege/vim-less'
NeoBundle 'wavded/vim-stylus'

" Infrastructure
NeoBundle 'chase/vim-ansible-yaml'
NeoBundle 'Glench/Vim-Jinja2-Syntax'
NeoBundle 'fatih/vim-hclfmt'

