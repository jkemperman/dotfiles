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
set number

" Show column/line number information on the status bar
set ruler

" Highlight current line
set cursorline

" Make whitespace visible
set list
set listchars=tab:»\ ,trail:·

" Highlight characters past 79 columns
highlight OverLength ctermbg=52 ctermfg=252
match OverLength /\%80v.\+/

" Always show statusbar
set laststatus=2

" gVim pimpin'
if has('gui_running')
    " Ignore mouse select
    set mouse-=a

    " Make the font a bit nicer
    if has('win32')
        set guifont=consolas:h14
    else
        set guifont=inconsolata\ 13
    endif

    " Change initial size
    set lines=42
    set columns=120

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

" Disable folding with markdown files
let g:vim_markdown_folding_disabled=1

" Snippet config
let g:UltiSnipsExpandTrigger="<tab>"


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

" Custom keybindings
" Avoid the extra keypress when going to command mode
map ; :

" Disable scroll wheel
map <ScrollWheelUp> <nop>
map <ScrollWheelDown> <nop>

" Easier window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Easier indenting
vnoremap < <gv
vnoremap > >gv
nnoremap < <<
nnoremap > >>

" Custom macros
" Set mapleader to comma
let mapleader=","

" Create a new tab
nnoremap <Leader>tt :tabnew<CR>

" Switch between tabs
nnoremap <Leader>tn :tabnext<CR>
nnoremap <Leader>tp :tabprevious<CR>

" Remove trailing whitespace
nnoremap <Leader>k :%s/\s\+$//<CR>

" Easier copy/pasting to/from clipboard
" Yanking
nnoremap <Leader>Y "+Y
vnoremap <Leader>y "+y

" Deleting
vnoremap <Leader>d "+d

" Pasting
nnoremap <Leader>P "+P
nnoremap <Leader>p "+p
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P

" Easy saving/quitting
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" Open/close nerdtree
nnoremap <Leader>f :NERDTreeToggle<CR>
