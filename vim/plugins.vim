" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Local vimrc
Plugin 'embear/vim-localvimrc'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Color schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'endel/vim-github-colorscheme'
Plugin 'jnurmine/Zenburn'

" Better statusbar
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" File explorer
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

" Easy commenting
Plugin 'scrooloose/nerdcommenter'

" Async build tool for linting/compilation on save
Plugin 'neomake/neomake'

" Surround text with html/other
Plugin 'tpope/vim-surround'

" Deal with word variants
Plugin 'tpope/vim-abolish'

" Alignment yo
Plugin 'godlygeek/tabular'

" Snippets!
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'vim-scripts/loremipsum'

" Cross-editor compatible editor config.
Plugin 'editorconfig/editorconfig-vim'

" Extra/improved language support
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-haml'
Plugin 'othree/html5.vim'
Plugin 'glench/vim-jinja2-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'slim-template/vim-slim'
Plugin 'nikvdp/ejs-syntax'
Plugin 'heartsentwined/vim-emblem'
Plugin 'dsawardekar/ember.vim'

" Neovim only
if has('nvim')
    " Terminal action!
    Plugin 'kassio/neoterm'
end
