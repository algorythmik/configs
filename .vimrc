set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Bundle 'vim-syntastic/syntastic'

" pep 8
Bundle 'nvie/vim-flake8'
" nerdtree
Bundle 'scrooloose/nerdtree'
" powerline
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" devicons
Bundle 'ryanoasis/vim-devicons'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" nerdtree
" mapnerdtree
nnoremap <C-B> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
set laststatus=2

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \| set softtabstop=4
    \| set shiftwidth=4
    \| set textwidth=79
    \| set expandtab
    \| set autoindent
    \| set fileformat=unix

" utf-8 encoding
set encoding=utf-8

let python_highlight_all=1
syntax on
set nu
" set split below
set splitbelow
tnoremap <Esc> <C-\><C-n>:q!<CR>
autocmd BufWritePre * %s/\s\+$//e
" exit if nerdtree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set clipboard=unnamed
