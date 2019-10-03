call plug#begin('~/.local/share/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

" Setup theme
silent! colorscheme nord

" General
set number
set colorcolumn=80

" Mappings
let mapleader = ","
inoremap jk <Esc>
inoremap <Esc> <Nop>

" fzf
let g:fzf_layout = { 'left': '~30%' }
nmap <leader>f :Files<CR>
