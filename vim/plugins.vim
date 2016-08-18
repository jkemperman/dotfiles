" Let Vundle manage itself
Plug 'gmarik/Vundle.vim'

" Local vimrc
Plug 'embear/vim-localvimrc'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Color schemes
Plug 'altercation/vim-colors-solarized'
Plug 'endel/vim-github-colorscheme'
Plug 'jnurmine/Zenburn'

" Better statusbar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" File explorer
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'

" Easy commenting
Plug 'scrooloose/nerdcommenter'

" Async build tool for linting/compilation on save
Plug 'neomake/neomake'

" Surround text with html/other
Plug 'tpope/vim-surround'

" Deal with word variants
Plug 'tpope/vim-abolish'

" Alignment yo
Plug 'godlygeek/tabular'

" Snippets!
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'vim-scripts/loremipsum'

" Cross-editor compatible editor config.
Plug 'editorconfig/editorconfig-vim'

" Extra/improved language support
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-haml'
Plug 'othree/html5.vim'
Plug 'glench/vim-jinja2-syntax'
Plug 'kchmck/vim-coffee-script'
Plug 'plasticboy/vim-markdown'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'slim-template/vim-slim'
Plug 'nikvdp/ejs-syntax'
Plug 'heartsentwined/vim-emblem'
Plug 'dsawardekar/ember.vim'

" Neovim only
if has('nvim')
    " Terminal action!
    Plug 'kassio/neoterm'
end
