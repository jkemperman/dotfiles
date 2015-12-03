" Explicitly specify encoding so Windows doesn't start crying
set encoding=utf-8

" Hacky way to get the .vim/.nvim folder location
let $MYVIM=split($MYVIMRC, 'rc')[0]

" Get Vundle if not present
if !isdirectory($MYVIM . "/bundle/Vundle.vim/.git")
    echo "Installing Vundle..."
    !git clone https://github.com/gmarik/Vundle.vim $MYVIM/bundle/Vundle.vim
endif

" Preparation for vundle
set nocompatible
filetype off
set rtp+=$MYVIM/bundle/Vundle.vim
let $PLUGINS=$MYVIM . '/plugins.vim'

" Let vundle do its thing
call vundle#begin()
source $PLUGINS
call vundle#end()

" Enable solarized colorscheme
syntax enable
set background=dark
colorscheme solarized

" Enable line numbering
set relativenumber

" Show column/line number information on the status bar
set ruler

" Make whitespace visible
set list
set listchars=tab:»\ ,trail:·

" Always show statusbar
set laststatus=2

" Disallow the use of the mouse
set mouse-=a

" gVim pimpin'
if has('gui_running')
    " Make the font a bit nicer
    if has('win32')
        set guifont=consolas:h12
    elseif has('gui_macvim')
        set guifont=monaco:h10
    else
        set guifont=inconsolata\ 12
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

" Disable folding with markdown files
let g:vim_markdown_folding_disabled=1

" Slightly increase NERDTree window size
let g:NERDTreeWinSize=40

" Remember lvimrc decisions and ignore sandbox
let g:localvimrc_persistent=2
let g:localvimrc_sandbox=0

" Increase Control-P max result count
let g:ctrlp_match_window='max:16,results:16'

" Eliminate delays on ESC
set ttimeoutlen=10

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

" Make search case insensitive if search pattern is all lowercase
set ignorecase
set smartcase

" Sane backspace behaviour
set backspace=2

" Disable linewrapping
set nowrap

" Filetype specific
filetype plugin indent on

source $MYVIM/keys.vim
