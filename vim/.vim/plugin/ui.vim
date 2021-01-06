Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
set laststatus=2
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'"

Plug 'tpope/vim-vinegar'
let g:netrw_banner = 1

Plug 'bling/vim-bufferline'
let g:bufferline_echo = 0
