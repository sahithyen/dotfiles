call plug#begin('~/.local/share/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'

call plug#end()

" Setup theme
silent! colorscheme nord

" General
set number
set colorcolumn=80

" Identation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Mappings
let mapleader = ","
inoremap jk <Esc>
inoremap <Esc> <Nop>

" fzf
let g:fzf_layout = { 'left': '~30%' }
nmap <leader>f :Files<CR>

" Language server

let g:ale_linters = {
\ 'javascript': ['eslint'],
\}
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'javascript': ['eslint'],
\}

let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
