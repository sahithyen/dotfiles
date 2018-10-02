" Plugins
call plug#begin('~/.nvim-plugins')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

" Mappings
let mapleader = ","
inoremap jk <esc>
nmap . :
nmap <Leader>f :Files<CR>
nmap <Leader>d :Buffers<CR>

" fzf
let g:fzf_layout = { 'left': '~40%' }
