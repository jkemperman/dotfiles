" Enable vim awesomeness
set nocompatible

" Enable molokai colorscheme
syntax on
colorscheme molokai

" Relative line numbering
set relativenumber

" Show column/line number information on the status bar
set ruler

" Highlight current line
set cursorline

" Make whitespace visible
set list
set listchars=tab:»\ ,trail:·

" Highlight characters past 79 columns
highlight OverLength ctermbg=52 ctermfg=252
match OverLength /\%79v.\+/

" Always show statusbar
set laststatus=2

" gVim pimpin'
if has('gui_running')
	" Ignore mouse select
	set mouse-=a

	" Make the font a bit nicer
	set guifont=consolas:h13

	" Remove gVim widgets
	set guioptions-=m " Menu bar
	set guioptions-=T " Toolbar
	set guioptions-=r " Left scroll bar
	set guioptions-=L " Right scroll bar
end

" Airline pimpin'
let g:airline_theme="badwolf"
let g:airline_powerline_fonts=0
let g:airline_left_sep=""
let g:airline_left_alt_sep=""
let g:airline_right_sep=""
let g:airline_right_alt_sep=""
let g:airline_branch_prefix=""
let g:airline_readonly_symbol=""
let g:airline_linecolumn_prefix=""

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
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

" Make search case insensitive if search pattern is all lowercase
set ignorecase
set smartcase

" Sane backspace behaviour
set backspace=2

" Linewrapping
set textwidth=79
set formatoptions+=t

" Filetype specific
filetype plugin indent on

" Custom keybindings
" Avoid the extra keypress when going to command mode
map ; :

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

" Force the use of hjkl instead of arrow keys
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
noremap  <Up>    <NOP>
noremap  <Down>  <NOP>
noremap  <Left>  <NOP>
noremap  <Right> <NOP>

" Custom macros
" Set mapleader to comma
let mapleader=","


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

" Open nerdtree
nnoremap <Leader>f :NERDTree<CR>

" Pathogen
execute pathogen#infect()

