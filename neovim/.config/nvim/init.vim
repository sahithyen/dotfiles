call plug#begin('~/.local/share/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

" Setup theme
colorscheme nord

" General
set number

" Default identation settings
set tabstop=2
set shiftwidth=2
set expandtab

" Mappings
let mapleader = ","
inoremap jk <Esc>
inoremap <Esc> <Nop>

" fzf
let g:fzf_layout = { 'left': '~30%' }

nmap <leader>f :Files<CR>
