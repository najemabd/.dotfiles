" this is the plugin set up link and config
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
set nocompatible                
filetype off
"Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"gruvbox config
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set bg=dark

"ripgrep config
if executable('rg')
    let g:rg_derive_root='true'
endif

"set nerd tree config
map <silent> <C-n> :NERDTreeFocus<CR>

"set buffer shortcuts
"map gz :bdelete<cr>   
"map gb :bnext<cr>
"map gB :nprev<cr>

"# This is the nvim set up config
syntax on
set number relativenumber
set smartcase
set nowrap
set hlsearch
set incsearch
set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
let mapleader = " "
let g:ctrlp_use_caching = 0
let g:netrw_winsize = 25
"set wildmode=longest,list,full
"set splitbelow splitright

"set colorcolumn=100
"highlight ColorColumn ctermbg=3 
"ctermb=90 lightgrey

"set coc config and improvements
set cmdheight=2
set updatetime=300
"Remapping some keyboard keys
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
