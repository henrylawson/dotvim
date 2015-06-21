let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_switch_buffer = 'Et'

" Search word under cursor in CtrlP
nmap <leader>lw :CtrlP<CR><C-\>w

" Search highlighted word in CtrlP
vmap <leader>lw y:CtrlP<CR><C-\>c
