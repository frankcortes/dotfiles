""""""""""""""""""""""
"   Basic Options    "
""""""""""""""""""""""
syntax on "syntax highlighter
set encoding=utf-8
set number "number of line
set nocompatible "arrow keys compatible

""""""""""""""""""""""
"  format and search "
""""""""""""""""""""""
set showmatch "smart parentheses
set autoindent
set hlsearch
set ignorecase "searches uses ignore case
set smartcase "... but it's not if is Pascal Case
set backspace=indent,eol,start "better backspacing
set foldenable " auto fold code

""""""""""""""""""""""
" unknown extensions "
""""""""""""""""""""""
au BufNewFile,BufRead *.hbs setlocal ft=html "hbs = html
au BufNewFile,BufRead *.Podfile setlocal ft=rb ".Podfile = ruby
au BufNewFile,BufRead *.Brewfile setlocal ft=rb ".Brewfile = ruby