" Plugins
call plug#begin('~/.nvim-plugins')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" General
set number

" Theme
colorscheme nord
set noshowmode

" Tabs
set tabstop=8
set shiftwidth=8
set expandtab

" Mappings
let mapleader = ","
inoremap jk <esc>
inoremap <Esc> <Nop>
nmap <Leader>f :Files<CR>
nmap <Leader>d :Buffers<CR>

" fzf
let g:fzf_layout = { 'left': '~40%' }

" C
autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
