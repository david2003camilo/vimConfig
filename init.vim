"CONFIG BASIC
set number
set mouse=a
syntax enable
set showcmd
set encoding=utf-8
set showmatch
set relativenumber
set sw=2
set clipboard=unnamed


call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'safv12/andromeda.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'


call plug#end()

"-------------------source----------------
source ~/.config/nvim/themes/onedark.vim
"------------------config-plugins---------
let mapleader=" "
let g:coc_node_path = trim(system('which node'))

nnoremap <Leader>n :NERDTreeFind<CR>
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>
nmap <leader>gs :CocSearch

nmap <Leader>s :w<CR>
nmap <leader>q :q<CR>

" config Link:https://vimcolorschemes.com/
set cmdheight=1
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0
colorscheme tokyonight
