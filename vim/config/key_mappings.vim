" Folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za

" Disabling arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" To open a new empty buffer
nmap <leader>T :enew<CR>

" Close the current buffer and move to the previous one
nmap <leader>q :Bdelete<CR>
nmap <leader><tab>q :Bdelete!<CR>

" Disable splash screen message
set shortmess+=I

" common commands
nnoremap <leader>w :w<CR>

" copy commands to grab file names
nmap <leader>cs :let @*=expand("%")<CR>       " relative path
nmap <leader>cl :let @*=expand("%:p")<CR>     " full path

" dash
nmap <silent> <leader>D <Plug>DashSearch

" reindent the entire file
map <Leader>I gg=G``<CR>

" clear whitespace
nmap <leader>d :DeleteTrailingWhitespace<CR>

" only this buffer stays open
nmap <leader>z :BufOnly<CR>

" Gundo
nnoremap <leader>u :GundoToggle<CR>

" Make directories of desired file
nmap <leader>p :!mkdir -p %:h<CR>

" Reload vim config
nmap <leader>rr :so $MYVIMRC<CR>
