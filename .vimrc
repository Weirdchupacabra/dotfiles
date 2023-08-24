call plug#begin()
Plug 'morhetz/gruvbox'
call plug#end()
autocmd vimenter * ++nested colorscheme gruvbox
set bg=dark
set number
syntax on
set cursorline
set hlsearch
