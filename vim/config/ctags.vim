nmap <leader>. :CtrlPTag<cr>
nmap <C-[> :TagbarToggle<CR>
map <C-\> :badd split<CR>:exec("tag ".expand("<cword>"))<CR>

set tags=.tags;/

let g:autotagTagsFile=".tags"
