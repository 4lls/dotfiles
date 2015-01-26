set nocompatible              " be iMproved, required
filetype off                  " required

set autoindent
set cindent
set shiftwidth=2 " set default auto indent
set wmh=0 " more file windows
set tabstop=2 " set the default tabstop
set expandtab " make tabs into spaces (set by tabstop)
map <C-J> <C-W>j<C-W>_ " 
map <C-K> <C-W>k<C-W>_ " ctrl-j/k to move max windows down/up
map <C-_> <C-W>_       " max current window
map - <C-W>-  "
map + <C-W>+  " resize vertical split windows less/more
map = <C-W>=  " resize all windows to equal size
"nmap <S-<> <C-W><
"nmap <S->> <C-W>>

" tab shortcuts
nmap ,n :tabnew<CR> " new 
nmap ,h :tabr<CR>   " first
nmap ,l :tabl<CR>   " last
nmap ,j :tabp<CR>   " previous
nmap ,k :tabn<CR>   " next
nmap ,' :tabc<CR>   " close

" window shortcuts
map ;n  <C-W>n<CR>  " new horizontal
map ;;n <C-W>v<CR>  " new vertical
map ;j  <C-W>j<CR>  " down
map ;k  <C-W>k<CR>  " up
map ;h  <C-W>h<CR>  " left
map ;l  <C-W>l<CR>  " right
map ;m  <C-W>q<CR>  " close

syntax on
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'      " plugins manager
Plugin 'Valloric/YouCompleteMe' " auto complete
Plugin 'kien/ctrlp.vim'         " quick search
Plugin 'tpope/vim-fugitive'     " Git wrapper
Plugin 'scrooloose/nerdtree'

" open NERDTree when vim starts with no specified file.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

imap jk	<ESC> " remap esc --> jk
call vundle#end()            " required
filetype plugin indent on    " required
