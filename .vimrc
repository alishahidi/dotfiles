:set number
:set mouse=a
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
let &t_ut=''

call plug#begin()

Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status bar
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'vim-airline/vim-airline-themes'
Plug 'tribela/vim-transparent'
Plug 'dracula/vim', { 'as': 'dracula' }

set encoding=UTF-8

call plug#end()

syntax enable
colorscheme dracula
