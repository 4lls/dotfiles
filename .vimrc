set nocompatible              " be iMproved, required
filetype off                  " required

set autoindent
set cindent
set shiftwidth=2
set wmh=0 " minimum window height to 0, stack more files, only display the filename.
set tabstop=2 " set the default tabstop
set expandtab " make tabs into spaces (set by tabstop)

syntax on

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'

" open NERDTree when vim starts with no specified file.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

imap jk	<ESC> " remap esc --> jk
call vundle#end()            " required
filetype plugin indent on    " required
