filetype plugin indent on
set encoding=utf-8
set clipboard=unnamedplus
set number

" Remaps 
inoremap jk <ESC>
let mapleader=" "
map ; :Files<CR>

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'OmniSharp/omnisharp-vim'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'itchyny/lightline.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Theme Config
syntax on
colorscheme codedark
