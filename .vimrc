
"-- VUNDLE ---------------------------------------------------------------------
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/ctags.vim'
Plugin 'vim-scripts/taglist.vim'

call vundle#end()

filetype plugin indent on

"-------------------------------------------------------------------------------

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set list
set listchars=tab:▸\ ,eol:¬,trail:_

"-------------------------------------------------------------------------------

set background=dark

inoremap jk <ESC>
nnoremap ; :

set exrc
set secure

let g:syntastic_c_check_header = 1
let g:syntastic_c_compiler_options = '-Wall -pedantic -std=c99'
let g:syntastic_c_compiler = 'gcc'

nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1

set number
set relativenumber

set mouse=a
hi statusline guibg=green

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

set laststatus=2
syntax on
set so=50

set showcmd
set showmode

set cindent
set sw=8
set ts=8
set sts=8
set noexpandtab
set cinoptions=t0,(.5s,u0,:0,+.5s 

set colorcolumn=81
highlight ColorColumn ctermbg=darkred ctermfg=white guibg=white
highlight OverLength ctermbg=darkred ctermfg=white guibg=white
match OverLength /\%81v.\+/

