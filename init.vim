"# this is the plugin set up link and config
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

set nocompatible                
filetype off

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

"gruvbox config
let g:gruvbox_contrast_dark = 'hard'

colorscheme gruvbox
:set bg=dark
"#set nerd tree config
map <silent> <C-n> :NERDTreeFocus<CR>
"# set buffer shortcuts
"map gz :bdelete<cr>   
"map gb :bnext<cr>
"map gB :nprev<cr>

"# This is the nvim set up config
syntax on
set nu
set smartcase
set incsearch
set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab


set colorcolumn=100
"highlight ColorColumn ctermbg=3 
"ctermb=90 lightgrey
