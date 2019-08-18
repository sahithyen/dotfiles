call plug#begin('~/.local/share/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'

call plug#end()

" Setup theme
colorscheme nord

" General
set number
set colorcolumn=80

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

let g:ale_linters = {
\   'javascript': ['standard'],
\   'python': ['flake8'],
\}

let g:ale_fixers = {
\   'javascript': ['standard'],
\   'python': ['autopep8'],
\}

let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

