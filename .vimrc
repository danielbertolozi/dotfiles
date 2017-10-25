set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
execute pathogen#infect()
call pathogen#helptags()
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'eslint/eslint'
Plugin 'scrooloose/syntastic'
call vundle#end()
syntax on
au BufRead,BufNewFile *.impex set filetype=impex
set number
set background=dark
colorscheme delek 
set shell=sh
set laststatus=2
set tabstop=4
set shiftwidth=4
set smartindent
set autoindent
set backspace=indent,eol,start
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
map <C-i> gg=G
map <C-j> ddp
map <C-k> ddkP
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" let g:syntastic_javascript_checkers = ['eslint']
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
