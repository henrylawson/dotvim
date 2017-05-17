if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --column\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

nnoremap K :grep! "<C-R><C-W>"<CR><CR>:cw<CR>
vnoremap K y:grep! "<C-R>""<CR><CR>:cw<CR>

nnoremap <leader>rw :copen<CR>
nnoremap <leader>re :cclose<CR>
nnoremap <leader>cm :noh<CR>

command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap <leader>f :Ag<SPACE>

augroup quickfix
    autocmd!
    autocmd FileType qf setlocal nowrap
augroup END
