call plug#begin('~/.vim/plugged')

" GUI
Plug 'tmhedberg/SimpylFold'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'christoomey/vim-tmux-navigator'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'

" Color schemes
Plug 'tomasr/molokai'
Plug 'jnurmine/Zenburn'

" Finding
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-abolish'
"
" Editing
" Plug 'SirVer/ultisnips'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'maralla/completor.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'

" Git
Plug 'jreybert/vimagit'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive' 
Plug 'airblade/vim-gitgutter'

" Language support
Plug 'nvie/vim-flake8'
Plug 'honza/vim-snippets'
Plug 'vim-scripts/indentpython.vim'
Plug 'davidhalter/jedi-vim'
Plug 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
Plug 'othree/xml.vim'
Plug 'shime/vim-livedown'
Plug 'mattn/emmet-vim'
Plug 'skammer/vim-css-color'

call plug#end()

" editor settings
set encoding=utf-8
" line numbers
syntax on
set nu
set cursorline

" use same clipboard as other programs
set clipboard=unnamed

" highlight search
set hlsearch
" new search after every typed char 
set incsearch

" 256 colour setting
set t_Co=256
set term=screen-256color

" Enable folding
set foldmethod=indent
set foldlevel=99
set textwidth=0
set wrapmargin=0

" do not annoy me
set completeopt=menu
set cmdheight=2
set backspace=indent,eol,start
set wildmode=longest,list,full
set wildmenu
set autoindent
set smartindent
set conceallevel=0

" ALE
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'python': ['yapf', 'remove_trailing_lines', 'trim_whitespace'],
\}
let g:ale_fix_on_save = 1

" Easymotion
nmap f <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)

" Jedi 
let g:jedi#completions_enabled = 0
let g:jedi#show_call_signatures = "2"
"
" Airline - Always show statusline
set laststatus=2
let g:airline_theme='zenburn'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

" Nerdtree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1

" Ultisnips
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Completor
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
let g:completor_node_binary = '/usr/local/bin'

" Tagbar
nmap <F8> :TagbarToggle<CR>

" key mappings
"Leader key
let mapleader=","
imap jk <Esc>


" motions
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nmap OO O<Esc>
nmap oo o<Esc>
"
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" buffers 
map <F9> :bprevious<CR>
map <F10> :bnext<CR>

" FZF buttons
command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)

nnoremap <silent> <C-t> :FZF ~<CR>
nnoremap <silent> <Leader>b :Buffers<cr>
nnoremap <silent> <Leader>a :Rg<cr>
nnoremap <silent> <Leader>t :Tags<cr>

" Magit

"unhighlight search
nnoremap <esc><esc> :noh<return>

"Folding shortcut
nnoremap <Space>  za

"show Nerdtree
nnoremap <Leader>f :NERDTreeToggle<Enter>

"find in Nerdtree
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

inoremap # X#

" toggle mode before pasting from external sources
set pastetoggle=<F2>

" File type specific settings
" Python
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 cc=80 shiftwidth=4 expandtab autoindent fileformat=unix
autocmd FileType *.py autocmd BufWritePre <buffer> %s/\s\+$//e
let python_highlight_all=1

" HTML/JS
au BufNewFile,BufRead *.html set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.js set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix

" ROS launch files
au BufNewFile,BufRead *.launch set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent fileformat=unix
au BufReadPost *.launch set syntax=xml


" change colorscheme
" if filereadable( expand("$HOME/.vim/bundle/molokai/colors/molokai.vim") )
"     colorscheme molokai
" endif

try
colors zenburn
catch
endtry
