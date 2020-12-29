Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)

nnoremap  <C-p> :Files .<CR>
nnoremap  <Leader>b :Buffers<cr>
nnoremap  <Leader>a :Rg<cr>
nnoremap  <Leader>t :Tags<cr>
