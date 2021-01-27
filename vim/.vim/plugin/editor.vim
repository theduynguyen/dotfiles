Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

Plug 'sheerun/vim-polyglot'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

Plug 'Konfekt/FastFold'
Plug 'tmhedberg/SimpylFold'
Plug 'machakann/vim-highlightedyank'

Plug 'easymotion/vim-easymotion'
" " Jump to anywhere you want with minimal keystrokes, with just one key binding.
" " `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
" nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

let g:conceallevel=0
