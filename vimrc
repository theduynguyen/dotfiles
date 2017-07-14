" Install plugins
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tomasr/molokai'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'jreybert/vimagit'
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'

"Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'
Plugin 'cjrh/vim-conda'

Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
Plugin 'gabrielelana/vim-markdown'
Plugin 'othree/xml.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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
let g:jedi#show_call_signatures = "2"
set cmdheight=2
set backspace=indent,eol,start
set wildmode=longest,list,full
set wildmenu
set autoindent
set smartindent

" Airline - Always show statusline
set laststatus=2
let g:airline_theme='durant'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

" Nerdtree options
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1

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
" move vertically by visual line
nnoremap j gj
nnoremap k gk

"unhighlight search
nnoremap <esc><esc> :noh<return>

"Folding shortcut
nnoremap ya za

"show Nerdtree
nnoremap <Leader>f :NERDTreeToggle<Enter>

"find in Nerdtree
nnoremap <silent> <Leader>v :NERDTreeFind<CR>


inoremap # X#

" toggle mode before pasting from external sources
set pastetoggle=<F2>

" File type specific settings
" Python
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
autocmd FileType py autocmd BufWritePre <buffer> %s/\s\+$//e
let python_highlight_all=1

" ROS launch files
au BufReadPost *.launch set syntax=xml


" change colorscheme
if filereadable( expand("$HOME/.vim/bundle/molokai/colors/molokai.vim") )
    colorscheme molokai
endif

