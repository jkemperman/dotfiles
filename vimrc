set nocompatible

" Look and feel
syntax on
colorscheme molokai
set number
set ruler
set cursorline
highlight OverLength ctermbg=52 ctermfg=252
match OverLength /\%79v.\+/
set list
set listchars=tab:»\ ,trail:·

" gVim pimpin'
if has('gui_running')
	" Ignore mouse select
	set mouse-=a

	" Make the font a bit nicer
	set guifont=consolas:h13

	" Remove gVim widgets
	set guioptions-=m
	set guioptions-=T
	set guioptions-=r
end

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

" Easier indenting
vnoremap < <gv
vnoremap > >gv
nnoremap < <<
nnoremap > >>

" Pathogen
execute pathogen#infect()
