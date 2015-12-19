let g:pencil#wrapModeDefault = 'hard'
let g:pencil#autoformat = 1
let g:pencil#textwidth = 80
let g:airline_section_x = '%{PencilMode()}'

let g:pencil_higher_contrast_ui = 1
let g:pencil_neutral_code_bg = 0

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
augroup END
