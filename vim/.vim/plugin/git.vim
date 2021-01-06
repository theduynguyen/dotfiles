Plug 'tpope/vim-fugitive'
hi DiffChange guibg=#5f005f
hi DiffAdd    guibg=#00005f
hi DiffRemove guibg=#005f5f
hi DiffText   guibg=#5f0000
if &t_Co == 256
	hi DiffChange ctermbg=53
	hi DiffAdd    ctermbg=17
	hi DiffDelete ctermbg=23
	hi DiffText   ctermbg=52
endif

Plug 'jreybert/vimagit'

autocmd User VimagitEnterCommit startinsert
let g:magit_default_fold_level = 1
let g:magit_auto_foldopen = 0
