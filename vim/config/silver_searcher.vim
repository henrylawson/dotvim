if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --column\ --nogroup\ --nocolor
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
