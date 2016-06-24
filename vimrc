set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vividchalk'
Plug 'tpope/vim-unimpaired'
Plug 'kien/ctrlp.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Chiel92/vim-autoformat'
" html, css
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'skammer/vim-css-color'
" php
Plug 'shawncplus/phpcomplete.vim'
Plug 'captbaritone/better-indent-support-for-php-with-html'
" go
Plug 'fatih/vim-go'

call plug#end()

set nobackup
set noswapfile

set number
set autochdir

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set hidden

set laststatus=2
set showmode

set omnifunc=syntaxcomplete#Complete
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType go setlocal omnifunc=go#complete#Complete
set completeopt=longest,menuone

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" html
let g:formatdef_htmlbeautify = '"html-beautify -f - -".(&expandtab ? "s ".shiftwidth() : "t")'


map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

map <C-n> :NERDTreeToggle<CR>
noremap <F3> :Autoformat<CR>

syntax on

colorscheme vividchalk

if filereadable($HOME . "/.vimrc.local")
	source ~/.vimrc.local
endif
