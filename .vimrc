set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/ctrlp.vim.git'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'hynek/vim-python-pep8-indent.git'
Plugin 'tpope/vim-sensible.git'
Plugin 'jmcantrell/vim-virtualenv.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic.git'
Plugin 'bling/vim-bufferline'
Plugin 'davidhalter/jedi-vim.git'
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set modelines=0

"TAB settings.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"" More Common Settings.
set encoding=utf-8
set scrolloff=3
set autoindent
set noshowmode
set showcmd
set hidden
set visualbell

set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

set number
set relativenumber

set undofile
set shell=/bin/bash
set lazyredraw
set matchtime=3

"Settings for Searching and Moving
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

" Make Vim to handle long lines nicely.
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=79

set completeopt-=preview

" To  show special characters in Vim
set listchars=tab:▸\ ,eol:¬

" enable folding
set foldmethod=indent
set foldlevel=99

" Set title to window
set title

" Make pasting done without any indentation break."
set pastetoggle=<F3>

" Make Vim able to edit crontab files again.
set backupskip=/tmp/*,/private/tmp/*"

" Wildmenu completion "
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn " Version Controls"
set wildignore+=*.aux,*.out,*.toc "Latex Indermediate files"
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg "Binary Imgs"
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest "Compiled Object files"
set wildignore+=*.spl "Compiled speolling world list"
set wildignore+=*.sw? "Vim swap files"
set wildignore+=*.DS_Store "OSX SHIT"
set wildignore+=*.luac "Lua byte code"
"set wildignore+=migrations "Django migrations"
set wildignore+=*.pyc "Python Object codes"
set wildignore+=*.orig "Merge resolution files"
set wildignore+=*.beam
set wildignore+=build
set wildignore+=static
set wildignore+=tmp
set wildignore+=node_modules
set wildignore+=*.class
set wildignore+=.stack-work

let mapleader = ","
nnoremap <leader><leader> <c-^>
map <C-n> :NERDTreeToggle<CR>

syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set background=dark
colorscheme solarized

"" Whitespace
set number                      " show line numbers
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" copy pasta
set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard

set runtimepath^=~/.vim/bundle/ctrlp.vim
