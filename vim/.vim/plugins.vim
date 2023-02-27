" Local vimrc
Plug 'embear/vim-localvimrc'

" Git wrapper
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Color schemes
Plug 'altercation/vim-colors-solarized'
Plug 'endel/vim-github-colorscheme'
Plug 'jnurmine/Zenburn'

" File explorer
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Easy commenting
Plug 'scrooloose/nerdcommenter'

" Surround text with html/other
Plug 'tpope/vim-surround'

" Deal with word variants
Plug 'tpope/vim-abolish'

" Alignment yo
Plug 'godlygeek/tabular'

" Test runner
Plug 'janko-m/vim-test'

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
Plug 'slim-template/vim-slim'
Plug 'nikvdp/ejs-syntax'
Plug 'heartsentwined/vim-emblem'
Plug 'keith/rspec.vim'
Plug 'JulesWang/css.vim'
Plug 'fatih/vim-go'
Plug 'AndrewRadev/vim-eco'
Plug 'junegunn/vim-easy-align'
Plug 'mxw/vim-jsx'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'prettier/vim-prettier'
Plug 'dense-analysis/ale'

" Clojure stuff
Plug 'bhurlow/vim-parinfer'
Plug 'tpope/vim-fireplace'
Plug 'kien/rainbow_parentheses.vim'

" Neovim only
if has('nvim')
    " Terminal action!
    Plug 'kassio/neoterm'
    Plug 'neomake/neomake'
end
