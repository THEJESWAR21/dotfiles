" Plugins
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lua/plenary.nvim'
Plug 'm4xshen/autoclose.nvim'
call plug#end()

" Configs
:set number
:set wildmode=longest,list
:set autoindent
:set shiftwidth=4
:set tabstop=4
:set expandtab
:set hlsearch
:set incsearch
:set cursorline
syntax on
colorscheme gruvbox
filetype plugin on

" Airline Config
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1

" AutoClose
lua << EOF
    require("autoclose").setup()
EOF
