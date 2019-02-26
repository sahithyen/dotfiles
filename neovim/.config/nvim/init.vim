call plug#begin('~/.local/share/nvim/plugged')

Plug 'arcticicestudio/nord-vim'

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
inoremap jk <Esc>
inoremap <Esc> <Nop>
