set nocompatible              " be iMproved, required
filetype off                  " required

" Line Numbers
set nu " turn off with set nonu

" Paste Mode
set pastetoggle=<F6>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
Plugin 'kien/ctrlp.vim'
" Replace Grep with Ack
Plugin 'mileszs/ack.vim'
" Coffeescript syntax
Plugin 'kchmck/vim-coffee-script'

Bundle 'slim-template/vim-slim.git'
Bundle 'tpope/vim-bundler.git'
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'vim-ruby/vim-ruby.git'
Bundle 'tpope/vim-cucumber.git'
Bundle 'skalnik/vim-vroom.git'
Bundle 'tpope/vim-endwise.git'
Bundle 'ervandew/supertab.git'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'zsh-users/zsh-completions.git'

" For vim-slim and colors of vim
syntax enable
" set background=dark
" colorscheme solarized

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
:set tabstop=2
:set shiftwidth=2
:set expandtab

"
" Keyboard Shortcuts from Normal Mode
" lead with a ',' and then type the command
let mapleader = ","
nmap <leader>nt :NERDTree<cr>

" Map split switching
nmap <leader>kk :wincmd k<cr>
nmap <leader>jj :wincmd j<cr>
nmap <leader>hh :wincmd h<cr>
nmap <leader>ll :wincmd l<cr>

" ALt mapping for split switching
nmap <D>[ :windcmd h<cr>
nmap <D>] :windcmd l<cr>

" Ack search
nmap <leader>a :Ack <cr>
