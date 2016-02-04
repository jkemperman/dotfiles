" Set mapleader to comma
let mapleader=","

" Avoid the extra keypress when going to command mode
map ; :

" Disable scroll wheel
map <ScrollWheelUp> <nop>
map <ScrollWheelDown> <nop>

" Easier window navigation
" iterm2 on OS X incorrectly sets the backspace key description to <C-h>. Use
" <BS> instead as a workaround for nvim.
if has('nvim')
    nmap <BS> <C-w>h
else
    nmap <C-h> <C-w>h
endif
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Easier indenting
vnoremap < <gv
vnoremap > >gv
nnoremap < <<
nnoremap > >>

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

" New splits (in reverse order because it is more intuitive)
nnoremap <Leader>sv :split<CR>
nnoremap <Leader>sh :vsplit<CR>

" NERDTree bindings
nnoremap <Leader>fg :NERDTreeFocus<CR>
nnoremap <Leader>fq :NERDTreeClose<CR>
nnoremap <Leader>ff :NERDTreeFind<CR>

" Fugitive git bindings
nnoremap <Leader>gst :Gstatus<CR>
nnoremap <Leader>gsh :Gsplit<CR>
nnoremap <Leader>gsv :Gvsplit<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gu :Gbrowse<CR>
nnoremap <Leader>gb :Gblame<CR>
vnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gpl :Gpull<CR>
nnoremap <Leader>gps :Gpush<CR>

" Clear search highlight by pressing enter a 2nd time
nnoremap <CR> :noh<CR><CR>
