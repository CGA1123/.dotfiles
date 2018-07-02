" load plugins with vim-plug
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/tpope/vim-git'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/tpope/vim-rails'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/tpope/vim-vinegar'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/kaicataldo/material.vim'
call plug#end()

" Manual Configuration!

" get syntax highlighting
syntax on

" enable filetype stuff
filetype plugin indent on

" show line numbers
set number

" highlight current line
set cursorline

" utf-8 ftw
set encoding=utf-8

" keep 8 lines below when scrolling
set scrolloff=8

set backspace=indent,eol,start
set autoindent
set smarttab
set expandtab
set shiftwidth=2
set tabstop=2

set updatetime=500

" set incremental search (try to find as we type)
set incsearch

" show column, line number in bottom left
set ruler

" tab completion commands!
set wildmenu

" Set autoread
set autoread

" Show whitespace characters
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list

" theme
set background=dark
set termguicolors
colorscheme material

" Set colorcolum
set colorcolumn=81,101

" Show hidden file in ctrlp
let g:ctrlp_show_hidden = 1

" Don't clutter working dir with swp files
set swapfile
set dir=~/tmp

" Fix blotchy background when using vim within tmux
set t_ut=

" Show unwanted whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Stop netrm from creating annoying file
let g:netrw_dirhistmax = 0

" remap ESC to § (for touchbar mac)
inoremap § <ESC>

" set zsh as shell
set shell=/bin/zsh

" Change cursor look in normal/edit modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
