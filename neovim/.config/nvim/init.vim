call plug#begin('~/.local/share/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'

call plug#end()

" Setup theme
colorscheme nord

" General
set number

" Default identation settings
set tabstop=8
set shiftwidth=8
set expandtab

" Mappings
let mapleader = ","
inoremap jk <Esc>
inoremap <Esc> <Nop>

" fzf
let g:fzf_layout = { 'left': '~30%' }
nmap <leader>f :Files<CR>

" JavaScript
let g:ale_linters = {
\   'javascript': ['standard'],
\}
let g:ale_fixers = {'javascript': ['standard']}
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

