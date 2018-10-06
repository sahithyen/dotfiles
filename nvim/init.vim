" Plugins
call plug#begin('~/.nvim-plugins')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" Theme
colorscheme nord

set noshowmode
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

" Tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Mappings
let mapleader = ","
inoremap jk <esc>
nmap . :
nmap <Leader>f :Files<CR>
nmap <Leader>d :Buffers<CR>

" fzf
let g:fzf_layout = { 'left': '~40%' }

" C
autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
