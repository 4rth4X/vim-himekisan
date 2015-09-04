##Prueba
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'gcmt/breeze.vim'
Bundle 'SirVer/ultisnips'
Bundle 'bling/vim-airline'
Bundle 'airblade/vim-gitgutter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'

set number
set cursorline
set cursorcolumn
set noerrorbells
set noswapfile

"Color themes select automatic
Bundle 'flazz/vim-colorschemes'
let hour = strftime("%H")
if 0 <= hour && hour < 7
  set background=light
else
  set background=dark
endif
colorscheme solarized
""""""""""""""""""
if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:sintax_on')
  syntax enable
endif

" Use :help 'option' to see rhe documentation for the given option
set autoindent
set backspace=indent,eol,start
set complete-=i
set showmatch
set showmode
set smarttab
set nrformats-=octal
set ttimeout
set ttimeoutlen=50
""""""""""""""""""
set laststatus=2
set ruler
set showcmd
set wildmenu
""""""""""""""""""
set autoread
set encoding=utf-8
set tabstop=2 shiftwidth=2 expandtab
set listchars=tab:▒░,trail:▓
set list
"""""""""""""""""
set hlsearch
set ignorecase
set smartcase

""""Plugins Settings
"Syntastic """""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
"Airline-vim"""""
let g:airline_powerline_fonts=1
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled=1
"CtrlP""""""""""""
set wildignore+=*/.git/*,*/.hg/*,*/.svn/* 
"Ultisnip"""""""""
let g:UltiSnipsExpandTrigger="<f1>"
let g:UltiSnipsJumpForwardTrigger="<f1>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:did_UltiSnips_vim_after=1
""Youcompleteme"""""""""
let g:ycm_min_num_of_chars_for_completion = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Nerd Tree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on 
" "    means that you can undo even when you close a buffer/VIM
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
  set undodir=~/.vim/temp_dirs/undodir
  set undofile
catch
endtry
