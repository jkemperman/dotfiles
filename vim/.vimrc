" Explicitly specify encoding so Windows doesn't start crying
set encoding=utf-8

" Hacky way to get the .vim/.nvim folder location
if has("nvim")
    let $MYVIM=split($MYVIMRC, "/init.vim")[0]
else
    let $MYVIM=split($MYVIMRC, "rc")[0]
end

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

let $PLUGINS='~/.vim/plugins.vim'
call plug#begin('~/.vim/plugged')
source $PLUGINS
call plug#end()

set rtp+=~/.fzf

" Enable solarized colorscheme
syntax enable
set background=dark
colorscheme solarized

" Enable line numbering
set number

" Show column/line number information on the status bar
set ruler

" Make whitespace visible
set list
set listchars=tab:»\ ,trail:·

" Always show statusbar
set laststatus=2

" Disallow the use of the mouse
set mouse-=a

" Match do/end, if/end etc. with the `%` key
runtime macros/matchit.vim

" gVim pimpin'
if has('gui_running')
    " Make the font a bit nicer
    if has('win32')
        set guifont=consolas:h10
    elseif has('gui_macvim')
        set guifont=monaco:h10
    else
        set guifont=inconsolata\ 10
    endif

    " Change initial size
    set lines=54
    set columns=140

    " Remove gVim widgets
    set guioptions-=m " Menu bar
    set guioptions-=T " Toolbar
    set guioptions-=r " Left scroll bar
    set guioptions-=L " Right scroll bar
end

" Link/build code on write
autocmd! BufWritePost * Neomake

" Play nicely with fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Add spaces when commenting with nerdcommenter
let NERDSpaceDelims=1

" Airline pimpin'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
end

let g:airline_theme="solarized"
let g:airline_powerline_fonts=0
let g:airline_left_sep=""
let g:airline_left_alt_sep=""
let g:airline_right_sep=""
let g:airline_right_alt_sep=""
let g:airline_symbols.branch=""
let g:airline_symbols.readonly=""
let g:airline_symbols.linecolumn=""

" Show tabline
" let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#show_tabs=0
" let g:airline#extensions#tabline#show_buffers=0

let g:neoterm_shell = "zsh"

" Slightly increase NERDTree window size
let g:NERDTreeWinSize=40

" Remember lvimrc decisions and ignore sandbox
let g:localvimrc_persistent=2
let g:localvimrc_sandbox=0

" Eliminate delays on ESC
set ttimeoutlen=10

" Disable folding, increasing performance
set nofoldenable

" Highlight search terms
set hlsearch
set incsearch

" Increase history
set history=1024
set undolevels=1024

" Disable swap/backup files
set nobackup
set noswapfile

" Tabs and indenting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

" Vertically center the cursor
set scrolloff=999

" Make search case insensitive if search pattern is all lowercase
set ignorecase
set smartcase

" Sane backspace behaviour
set backspace=2

" Disable linewrapping
set nowrap

" Asynchronously run tests
let test#strategy = "neoterm"

call neomake#configure#automake('rw', 1000)

" Lower contrast whitespace characters
hi NonText ctermfg=black

" Filetype specific
filetype plugin indent on

" Searching using :vim[grep]
set wildignore+=*/node_modules/*
set wildignore+=*/.git/*

source $MYVIM/keys.vim
