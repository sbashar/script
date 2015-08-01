set tabstop=4                    "An indentation level every four columns"
set expandtab                   "Convert all tabs typed into spaces"
set shiftwidth=4               "Indent/outdent by four columns"
set shiftround                   "Always indent/outdent to nearest tabstop"

execute pathogen#infect()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set laststatus = 2

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
