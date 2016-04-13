" nesro's .vimrc
" https://github.com/nesro/dotfiles
" warning: this is very, very bad .vimrc and I'm not happy with it at all

"-- VUNDLE ---------------------------------------------------------------------
" https://github.com/gmarik/Vundle.vim
"
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" install plugins:
" vim +PluginInstall +qall

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'scrooloose/syntastic'
"Plugin 'scrooloose/nerdtree'
"Plugin 'vim-scripts/ctags.vim'
"Plugin 'vim-scripts/taglist.vim'
Plugin 'amdt/vim-niji' " rainbow parentheses

call vundle#end()

filetype plugin indent on

"- ECLIM -----------------------------------------------------------------------
"-------------------------------------------------------------------------------

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set list
set listchars=tab:▸\ ,eol:¬,trail:_

"-------------------------------------------------------------------------------

set background=dark " must have, if your terminal is white on black

" the fastest way how to run commands
inoremap jk <ESC>
nnoremap ; :

"-------------------------------------------------------------------------------

"map <C-n> :NERDTreeToggle<CR>


" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

function AS()
	let l:winview = winsaveview()
	execute "%!astyle"
	call winrestview(l:winview)
endfunction
	
nnoremap <silent> <F12> :%!astyle<CR>
nnoremap <silent> <F9> :AS<CR>
set exrc
set secure

"- YCM

"let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1 }
"let g:ycm_always_populate_location_list = 1

"-------------------------------------------------------------------------------

"let g:syntastic_c_check_header = 1
"let g:syntastic_c_compiler_options = '-Wall -pedantic -std=c99'
"let g:syntastic_c_compiler = 'gcc'

"nnoremap <silent> <F8> :TlistToggle<CR>
"let Tlist_GainFocus_On_ToggleOpen = 1
"let Tlist_Close_On_Select = 1

set number
"set relativenumber

set mouse=a
hi statusline ctermfg=green ctermbg=black

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
"set cinoptions=t0,(.5s,u0,:0,+.5s 

set colorcolumn=81
highlight ColorColumn ctermbg=darkred ctermfg=white guibg=white
highlight OverLength ctermbg=darkred ctermfg=white guibg=white
match OverLength /\%81v.\+/

