set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugin list
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'

" All Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set tabstop=4                    "An indentation level every four columns
set expandtab                   "Convert all tabs typed into spaces
set shiftwidth=4               "Indent/outdent by four columns
set shiftround                   "Always indent/outdent to nearest tabstop

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set laststatus=2

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_html_checkers = ['w3']

let g:syntastic_enable_perl_checker = 1

syntax enable
set nobackup
set background=light
colorscheme solarized
set number
