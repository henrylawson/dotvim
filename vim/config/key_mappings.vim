" Folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za

" Disabling arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" toggle for pasting to ignore indents
set pastetoggle=<f5>

" To open a new empty buffer
nmap <leader>T :enew<CR>

" Close the current buffer and move to the previous one
nmap <leader>q :bd<CR>
nmap <leader><tab>q :bd!<CR>

" common commands
nnoremap <leader>w :w<CR>

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
nmap <leader>rr :so $MYVIMRC<CR>:AirlineRefresh<CR>:PlugUpdate<CR>:PlugUpgrade<CR>:PlugClean<CR>

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
