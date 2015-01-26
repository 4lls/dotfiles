set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'      " plugins manager
Plugin 'Valloric/YouCompleteMe' " auto complete
Plugin 'kien/ctrlp.vim'         " quick search
Plugin 'tpope/vim-fugitive'     " Git wrapper
Plugin 'scrooloose/nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required

set wildmenu
set autoindent
set smartindent
set shiftround
set cindent
set wmh=0 " more file windows
set tabstop=2 " set the default tabstop
set softtabstop=2
set shiftwidth=2 " set default auto indent
set expandtab " make tabs into spaces (set by tabstop)
set smarttab
set cursorline
set cursorcolumn
set noswapfile
set nowritebackup
set nobackup
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start " more powerful backspacing
set encoding=utf-8
set shortmess+=I  " remove mesg at startup
set ruler " always show current position
set showcmd
set textwidth=0
set wrap
set nonumber
set showmatch
set matchtime=5
set novisualbell
set noerrorbells
set laststatus=2
set background=light

imap jk	<ESC> 
nnoremap <C-S-J> <C-W>j<C-W>_ " 
nnoremap <C-S-K> <C-W>k<C-W>_ " max windows down/up
nnoremap <C--> <C-W>_ " max current window
nnoremap - <C-W>-  "
nnoremap + <C-W>+  " resize vertical split windows less/more
nnoremap = <C-W>=  " resize all windows to equal size
nmap <A-<> <C-W><
nmap <A->> <C-W>>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" tab shortcuts
nmap ,n :tabnew<CR> " new 
nmap ,h :tabr<CR>   " first
nmap ,l :tabl<CR>   " last
nmap ,j :tabp<CR>   " previous
nmap ,k :tabn<CR>   " next
nmap ,m :tabc<CR>   " close

map <leader>tn :tabnew<cr>
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
" window shortcuts
map ;n  <C-W>n<CR>  " new horizontal
map ;;n <C-W>v<CR>  " new vertical
map ;j  <C-W>j<CR>  " down
map ;k  <C-W>k<CR>  " up
map ;h  <C-W>h<CR>  " left
map ;l  <C-W>l<CR>  " right
map ;m  <C-W>q<CR>  " close
map ,'  <C-W><S-T><CR> " open current window in newtab
" fast saving
nmap <leader>w :w!<CR>

syntax on
" Open NERDTree automatically at startup if no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close vim if NerdTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
