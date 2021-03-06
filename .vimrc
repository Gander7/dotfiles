
set encoding=utf-8
set fileencoding=utf-8

set clipboard=unnamed	 	" share clipboard
set number 			" show line numbers
set cursorline 			" highlight line with cursor
set autoindent			" copy indent when using o/O
set smartindent			" vim tries to match indents
set hlsearch			" highlight all results from search
set ignorecase			" ignore case in searches
set smartcase			" except when capitals are involved

set ttyfast 		" Faster rendering
set laststatus=2 	" Always show status line

" Persistent Undo
set undofile
set undodir=~/.vim/undodir

" Go to below plugins for theme config

"""""""""""""""""""""""""""""""""""""""""""
" Remaps 
"""""""""""""""""""""""""""""""""""""""""""
let mapleader="\\"
" Don't move to escape
inoremap jk <ESC>
" Search for file
nnoremap ; :Files<CR>
" Toggle project directory
nnoremap <C-p> :NERDTreeToggle<CR>
" Go to next/prev tab
nnoremap <Tab> gt
nnoremap <S-Tab> gT
" Navigate easier among splits
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
" Exit window if already saved (not saved throws error)
nnoremap <BS> :q<CR>
" Run cargo check for rust, not sure for other languages
nnoremap rt :make c<CR>
" Allows saving when you eventually open a system file without sudo
cnoremap w!! execute 'silent! write !sudo tee % > /dev/null' <bar> edit!

" Disable arrows + ESC
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
inoremap <ESC> <NOP>

"""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins
Plug 'airblade/vim-gitgutter' " Git Indicators
Plug 'editorconfig/editorconfig-vim' " Abide by editorconfig files
Plug 'itchyny/lightline.vim' " Status bar
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " File Search
Plug 'junegunn/fzf.vim' " File search, part of above line
Plug 'mattn/emmet-vim' " Emmet for vim (HTML files)
Plug 'OmniSharp/omnisharp-vim' " C# for vim
Plug 'racer-rust/vim-racer' " Rust code completion + navigation
Plug 'rust-lang/rust.vim' " Rust file detection, synxtax highlighting, and formatting
Plug 'scrooloose/nerdtree' " sidebar file search
Plug 'segeljakt/vim-silicon' " take pictures of code
"Plug 'TaDaa/vimade' " Fades inactive splits
Plug 'tpope/vim-sensible' " default settings everyone can agree on
Plug 'tpope/vim-surround' " working with paren, brackets, tags, etc
Plug 'terryma/vim-multiple-cursors' " name says it all
"Plug 'vitalk/vim-simple-todo'
Plug 'christophermca/meta5'
Plug 'jiangmiao/auto-pairs'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" html syntax to dotnet razor files
autocmd BufNewFile,BufRead *.cshtml set syntax=html
autocmd BufNewFile,BufRead *.razor set syntax=html

" Theme Config
syntax on
colorscheme meta5
