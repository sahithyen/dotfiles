" Plugins
call plug#begin('~/.nvim-plugins')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

" Mappings
let mapleader = ","
inoremap jk <esc>
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>

" fzf
let g:fzf_layout = { 'left': '~40%' }
