let g:ale_completion_enabled = 1

call plug#begin('~/.local/share/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'junegunn/goyo.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'

call plug#end()

" Setup theme
packadd! dracula_pro
syntax enable
let g:dracula_colorterm = 0
colorscheme dracula_pro

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
tnoremap jk <C-\><C-n>
inoremap jk <Esc>
inoremap <Esc> <Nop>

" fzf
let g:fzf_layout = { 'left': '~30%' }
nmap <leader>f :Files<CR>
nmap <leader>r :ALERename<CR>

" Language server

let g:ale_linters = {
\ 'javascript': ['eslint'],
\ 'rust': ['rls'],
\ 'python': ['flake8'],
\}

let g:ale_fixers = {
\ 'javascript': ['eslint'],
\ 'rust': ['rustfmt'],
\}

let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

let g:rooter_patterns = ['.git']
