set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$HOME/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required

let mpleader=","

set laststatus=2
syntax on
set number
colorscheme cobalt2
set ruler " Show ruler
set go-=T " Following line removes the toolbar, As I usually dont need it.  Gives me extra lines for editor. If you have big monitor and you think you need toolbar, comment this line.
" Make command line two lines high
set ch=2
set t_Co=256
set bs=2 " allow backspacing over everything in insert mode
set ai " always set autoindenting on

set showmatch " show matching brackets
set hidden " This option allows you to switch between multiple buffers without saving a changed buffer

"------------------ Search -----------------
set hlsearch " Switch on search pattern highlighting.
set incsearch



set mousehide " Hide the mouse pointer while typing.

" airline
let g:airline_powerline_fonts = 1
set guifont=Inconsolata-dz_for_Powerline:h11
set linespace=3

"nerdtree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


"------------------- Mappings --------------------
nmap <Leader>ev :tabedit $MYVIMRC<cr> 

nmap <Leader><space> :nohlsearch<cr>

"------------------- Auto-Commands ---------------
autocmd BufWritePost $MYVIMRC source $MYVIMRC

