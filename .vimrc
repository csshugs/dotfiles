" This must be first, because it changes other options as a side effect.
set nocompatible

" ------
" Vundle
" ------

" Required
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" ---------

" Emmet
Plugin 'mattn/emmet-vim'

" Airline
Plugin 'bling/vim-airline'

" Git Gutter
Plugin 'airblade/vim-gitgutter'

" Fugitive
Plugin 'tpope/vim-fugitive'

" Multiple Cursors
Plugin 'terryma/vim-multiple-cursors'

" commentary.vim
Plugin 'tpope/vim-commentary'

" Mustache and Handlebars syntax
Plugin 'mustache/vim-mustache-handlebars'

" ---------


" All of your Plugins must be added before the following line
call vundle#end()





" -----
" Reset
" -----

" Encoding
set encoding=utf-8

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden





" -----
" Theme
" -----

" Dark solarized scheme
set background=dark
colorscheme solarized





" ---------------------------
" Tabs, indentation and lines
" ---------------------------

" 4 spaces please
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Round indent to nearest multiple of 4
set shiftround

" No line-wrapping
set nowrap





" ------------
" Interactions
" ------------

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5





" ------------------
" Visual decorations
" ------------------

" Show file title in terminal tab
set title

" Limit line-length to 80 columns by highlighting col 81 onward
if exists("+colorcolumn")
    set colorcolumn=81
endif

" Highlight current line
set cursorline

" Don't keep results highlighted after searching...
set nohlsearch

" ...just highlight as we type
set incsearch

" Ignore case when searching...
set ignorecase

" ...except if we input a capital letter
set smartcase





" ------------
" Key mappings
" ------------

" jj to throw you into normal mode from insert mode
inoremap jj <esc>

" Emmet tab key
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Swap Lines
nnoremap <c-k> :m .-2<CR>==
nnoremap <c-j> :m .+1<CR>==
inoremap <c-k> <Esc>:m .-2<CR>==gi
inoremap <c-j> <Esc>:m .+1<CR>==gi
vnoremap <c-k> :m '<-2<CR>gv=gv
vnoremap <c-j> :m '>+1<CR>gv=gv





" ---------------
" Plugin specific
" ---------------

" Show airline status bar
set laststatus=2

" Show Powerline font for airline
let g:airline_powerline_fonts = 1

" Mustache abbreviations
let g:mustache_abbreviations = 1
