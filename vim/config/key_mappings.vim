let mapleader="\\"

" Folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za

" Disabling arrow keys
noremap <up> <nop>
noremap! <up> <nop>
noremap <down> <nop>
noremap! <down> <nop>
noremap <left> <nop>
noremap! <left> <nop>
noremap <right> <nop>
noremap! <right> <nop>

" toggle for pasting to ignore indents
set pastetoggle=<f5>

" To open a new empty buffer
nmap <leader>T :enew<CR>

" common commands
nnoremap <leader>w :w<CR>
nnoremap <Leader>q :Bdelete<CR>
nnoremap <Leader>v :bufdo :Bdelete<CR>

" copy commands to grab file names
nmap <leader>cs :let @*=expand("%")<CR>       " relative path
nmap <leader>cl :let @*=expand("%:p")<CR>     " full path

" reindent the entire file
map <Leader>I gg=G``<CR>

" clear whitespace
nmap <leader>d :retab<CR>:DeleteTrailingWhitespace<CR>

" only this buffer stays open
nmap <leader>z :BufOnly<CR>

" Gundo
nnoremap <leader>u :GundoToggle<CR>

" Reload vim config
nmap <leader>rr  :so $MYVIMRC<CR>:AirlineRefresh<CR>
nmap <leader>rp  :PlugUpgrade<CR>:PlugUpdate<CR>
nmap <leader>rpc :PlugClean<CR>

" Repeat last substitution
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" Faster viewport scolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Write with sudo
cmap w!! w !sudo tee > /dev/null %

" Catch common typo with W and Q, alias them
cnoreabbrev W w
cnoreabbrev Q q

" Goyo
nmap <leader>go :Goyo<CR>
