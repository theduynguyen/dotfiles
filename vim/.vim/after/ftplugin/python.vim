set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent
set colorcolumn=120
setlocal foldmethod=indent
set foldcolumn=0
setlocal foldlevel=99
setlocal foldtext=substitute(getline(v:foldstart),'\\t','\ \ \ \ ','g')
