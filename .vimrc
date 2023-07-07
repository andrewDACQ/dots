" Andrew Thompson 
" andrewDACQ @ github
" June 2023 
" .vimrc

" Fold keymaps
" zo: open fold
" zc: close fold
" zO: open all folds
" zM: close all folds
"
" Key Binding Notes 
" <Nop> = no input
" <leader> = mod key (space)
" <CR> = send "enter" after a command

set nocompatible       " no vi mode
filetype on	           " detect file types
filetype plugin on     " detect and enable plugins by file type
filetype indent on     " load an indent file by file type
syntax on              " sytax enabled

colorscheme jellybeans
set laststatus=2

set number             " line numbers
set ruler              " cursor position
set nowrap             " no word wrap
set incsearch          " highlight search term incrementally

" search settings
set ignorecase 
set smartcase
set hlsearch
set showmatch

" tab settings
set shiftwidth=4
set tabstop=4
set expandtab

" QoL settings
set nobackup
set scrolloff=10

" display settings
set showcmd
set showmode

" history settings
set history=1000
" wildmenu settings (TAB autocomplete)
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

"<== Plugins ==> 
call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'raimondi/delimitmate'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/vim-easy-align'

Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

Plug 'leafgarland/typescript-vim'
Plug 'elzr/vim-json'

Plug 'ap/vim-css-color'
Plug 'itchyny/lightline.vim'

call plug#end()

"<== Normal Mode ==>"
" space = <leader>
nnoremap <SPACE> <Nop> 
let mapleader = " "

" open a new line above or below and then exit insert mode
nnoremap o o<esc>
nnoremap O O<esc>

" space + / = clear search highlighting
nnoremap <leader>/ :nohlsearch<CR> 

" Y to yank till the end of the line
nnoremap Y y$ " 

" window navigation - control + (j | h | k | l)
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" window resizing - control + (arrow key) 
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" Leader commands
map <leader>q :wq <CR>
map <leader>w :w <CR>
map <leader><TAB> :tabNext <CR>

"<== Insert Mode ==>"   
" jj = exit insert mode
inoremap jj <ESC>

" <== Plugin keymaps ==>
map <leader>b :NERDTreeToggle <CR>
map <leader>f :FZF <CR>
map <leader>l :vsplit <CR>
map <leader>j :split <CR>

"<== NerdTree Options ==>
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$'] 

"<== Ale Options ==>
let g:ale_linters = {
\ 'python': ['pylint', 'flake8'],
\ 'javascript': ['eslint'],
\ 'typescript': ['eslint'],
\ 'html': ['htmlhint'],
\ }
let g:ale_fixers = {
\ 'python': ['autopep8', 'black'],
\ 'javascript': ['eslint'],
\ 'typescript': ['eslint'],
\ 'html': ['prettier'],
\ }

let g:ale_completion_enabled = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
