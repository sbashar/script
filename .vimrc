set nocompatible              " Be iMproved, required
filetype off                  " Required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugin list
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'

" All Plugins must be added before the following line
call vundle#end()            "Required
filetype plugin indent on    " Required

" Statusline settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set laststatus=2

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_checkers = ['w3']
let g:syntastic_enable_perl_checker = 1

" Solarized settings
set background=light
colorscheme solarized

syntax enable
set nobackup
set number
set tabstop=4                    "An indentation level every four columns
set expandtab                   "Convert all tabs typed into spaces
set shiftwidth=4               "Indent/outdent by four columns
set shiftround                   "Always indent/outdent to nearest tabstop

" Set tags
set tags=tags;/
