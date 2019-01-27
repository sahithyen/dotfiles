" Plugins
call plug#begin('~/.nvim-plugins')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'w0rp/ale'
Plug 'junegunn/goyo.vim'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

call plug#end()

" General
set number

" Theme
colorscheme nord
set noshowmode

" Tabs
set tabstop=2
set shiftwidth=2
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

" JavaScript
let g:ale_linters = {
      \   'javascript': ['standard'],
      \}

" Rust
let g:rustfmt_autosave = 1

let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
