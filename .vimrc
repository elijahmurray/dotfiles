" Basic settings
set nocompatible
filetype off

" Line Numbers
set nu " turn off with set nonu

" Paste Mode
set pastetoggle=<F6>

" Initialize vim-plug
call plug#begin('~/.vim/plugged')

" Plugins using vim-plug
Plug 'tpope/vim-fugitive'
Plug 'wincent/command-t'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'scrooloose/nerdtree'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-cucumber'
Plug 'skalnik/vim-vroom'
Plug 'tpope/vim-endwise'
Plug 'ervandew/supertab'
Plug 'altercation/vim-colors-solarized'
Plug 'zsh-users/zsh-completions'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'dsawardekar/ember.vim'

" End plugins section
call plug#end()

" Syntax and colors
syntax enable
" set background=dark
" colorscheme solarized

" Indentation settings
set tabstop=2
set shiftwidth=2
set expandtab

" Keyboard shortcuts
let mapleader = ","
nmap <leader>nt :NERDTree<cr>
nmap <leader>kk :wincmd k<cr>
nmap <leader>jj :wincmd j<cr>
nmap <leader>hh :wincmd h<cr>
nmap <leader>ll :wincmd l<cr>
nmap <D>[ :windcmd h<cr>
nmap <D>] :windcmd l<cr>
nmap <leader>a :Ack <cr>

" CtrlP settings
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = 'node_modules\|tmp/cache'

" React syntax highlighting for .jsx files only
let g:jsx_ext_required = 1

