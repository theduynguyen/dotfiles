" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1

" Plug 'deoplete-plugins/deoplete-jedi'

Plug 'dense-analysis/ale'
let g:ale_lint_on_save = 1
" let g:ale_python_flake8_options = '--max-line-length=120'
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint','prettier'],
\   'scss': ['prettier'],
\   'html': ['prettier'],
\   'python': ['yapf'],
\   'yaml': ['prettier'],
\   'json': ['prettier'],
\}
let g:ale_fix_on_save = 1
let g_ale_sign_column_always = 1
" let g:ale_virtualenv_dir_names = []
" let g:ale_python_flake8_executable = 'python3'
" let g:ale_python_flake8_use_global = 0
let g:airline#extensions#ale#enabled = 1
