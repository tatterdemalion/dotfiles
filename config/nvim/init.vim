let g:plugged_home = '~/.vim/plugged'
" Plugins List
call plug#begin(g:plugged_home)
  " UI related
  " Plug 'christoomey/vim-tmux-navigator'
  Plug 'emilienlemaire/nvimux-navigator'
  Plug 'scrooloose/nerdtree'
  Plug 'chriskempson/base16-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Fuzzy search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'  " fuzzy finder
  " Better Visual Guide
  Plug 'Yggdroot/indentLine'
  " syntax check
  Plug 'w0rp/ale'
  " import sorter
  " Plug 'tweekmonster/impsort.vim'
  " Autocomplete
  Plug 'Valloric/YouCompleteMe'
  Plug 'davidhalter/jedi-vim'
  " Formater
  Plug 'Chiel92/vim-autoformat'
  " Full text search
  Plug 'mileszs/ack.vim'
  " Commenter
  Plug 'preservim/nerdcommenter'
call plug#end()
filetype plugin indent on
" Configurations Part
" UI configuration
syntax on
syntax enable
" colorscheme
let base16colorspace=256
colorscheme base16-gruvbox-dark-hard
set background=dark
" True Color Support if it's avaiable in terminal
if has("termguicolors")
    set termguicolors
endif
if has("gui_running")
  set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
endif
set number
set relativenumber
set hidden
set mouse=a
set noshowmode
set noshowmatch
set nolazyredraw
" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase
" Tab and Indent configuration
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" Ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'always'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}
" Airline
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'
" My configuration
let mapleader = ","
"" copy pasta
set clipboard+=unnamedplus  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard
"" Nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
"" ImpSort!
"" nnoremap <leader>is :<c-u>ImpSort!<cr>
"" Remove highlights after a search
nnoremap <leader><Space> :nohlsearch<cr>
" Auto reload files
set autoread
" disable arrow keys in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" Remove traling whitespaces
func! DeleteTrailingWS()
  %s/\s\+$//e
endfunc
" Remove tralinig whitespaces in Python files on save
autocmd BufWrite *.py :call DeleteTrailingWS()
set undodir=~/.config/nvim/undo//
set undofile
set shell=/bin/zsh
set nolazyredraw
set matchtime=3
nmap <Leader>t :Files<CR>
nmap <Leader>T :Tags<CR>
" ycm
let g:ycm_confirm_extra_conf = 0
set completeopt-=preview
" Full text search
let g:ackprg = 'ag --vimgrep'

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
