call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

call plug#end()

" Setup theme
syntax enable
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
tnoremap jk <C-\><C-n>
inoremap jk <Esc>
inoremap <Esc> <Nop>

" fzf
let g:fzf_layout = { 'left': '~30%' }
nmap <leader>f :Files<CR>

" lsp
lua << EOF
require'lspconfig'.clangd.setup{}
EOF

nnoremap <silent> <leader>d <cmd>lua vim.lsp.buf.definition()<CR>

let g:rooter_patterns = ['.git']
