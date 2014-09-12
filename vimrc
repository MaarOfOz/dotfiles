set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vividchalk'
Plug 'kien/ctrlp.vim'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'skammer/vim-css-color'
Plug 'Chiel92/vim-autoformat'
Plug 'shawncplus/phpcomplete.vim'
Plug 'captbaritone/better-indent-support-for-php-with-html'

call plug#end()

set nobackup
set noswapfile

set number
set autochdir

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab 

set ofu=syntaxcomplete#Complete

set hidden

set laststatus=2
set showmode

autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
set completeopt=longest,menuone

noremap <F3> :Autoformat<CR>

syntax on

colorscheme vividchalk
