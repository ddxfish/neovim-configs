" Vim-Plug
call plug#begin('~/.config/nvim/plugged')

" Essential plugins
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'

" Lightweight statusline
Plug 'itchyny/lightline.vim'

" Colorscheme
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

" Basic settings
set nocompatible
filetype plugin indent on
syntax on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\│
set wrap breakindent
set encoding=utf-8
set number
set title

" Lightline configuration
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }

" IndentLine configuration
let g:indentLine_char = '▏'
let g:indentLine_faster = 1
let g:indentLine_fileTypeExclude = ['help', 'nerdtree', 'text', 'sh']

" Color scheme
colorscheme dracula

" Custom mappings
let mapleader=","
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>x :x<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>

" Function to trim trailing whitespace
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfunction
nmap <leader>t :call TrimWhitespace()<CR>

" File type specific settings
autocmd FileType html,css,javascript,typescript setlocal shiftwidth=2 tabstop=2 softtabstop=2
