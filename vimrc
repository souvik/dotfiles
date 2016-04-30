set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'eparreno/vim-l9'

" NERDTree plugin from github
Plugin 'scrooloose/nerdtree'

" Nerdcommenter plugin from github
Plugin 'scrooloose/nerdcommenter'

" NerdTreeTab plugin from github
Plugin 'jistr/vim-nerdtree-tabs'

" Ruby plugin from github
Plugin 'vim-ruby/vim-ruby'

" Rails plugin from github
Plugin 'tpope/vim-rails'

" jQuery plugin from github
Plugin 'itspriddle/vim-jquery'

" JavaScript plugin from github
Plugin 'jelera/vim-javascript-syntax'

" HAML plugin from github
Plugin 'tpope/vim-haml'

" Cucumber plugin from github
Plugin 'tpope/vim-cucumber'

" Tabular plugin from github
Plugin 'godlygeek/tabular'

" Vividchalk plugin from github
Plugin 'tpope/vim-vividchalk'

" Fugitive plugin from github
Plugin 'tpope/vim-fugitive'

" Python plugin from github
Plugin 'python.vim'

" SCSS plugin from github
Plugin 'cakebaker/scss-syntax.vim'

" HTML plugin from github
Plugin 'othree/html5.vim'

" Coffeescript plugin from github
Plugin 'kchmck/vim-coffee-script'

" Modified statusline plugin from github
Plugin 'bling/vim-airline'

" Quickly search file
Plugin 'kien/ctrlp.vim'

" Change surroundings in pairs
Plugin 'tpope/vim-surround'

" Easy text exchange operator
Plugin 'tommcdo/vim-exchange'

" Angularjs plugin from github
Plugin 'burnettk/vim-angular'

" Find file faster
Plugin 'vim-scripts/FuzzyFinder'

" TextMate snippet feature
" desert
Plugin 'vim-scripts/snipMate'

" Match anything
Plugin 'edsono/vim-matchit'

Plugin 'wincent/command-t'
Plugin 'mileszs/ack.vim'

" Provides automatic closing of quotes, parenthesis, brackets, etc.
Plugin 'Raimondi/delimitMate'

Plugin 'kreeger/benlight'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Set the color scheme used for syntax highlighting

set background=dark
set t_Co=256
colorscheme benlight

" Showing line number all the time
set number
" Showing list characters all the time
set list
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
set laststatus=2
" Enable search highlighing
set hlsearch
set hidden

set backspace=indent,eol,start

" Shortcut to rapidly toggle 'set list'
nmap <leader>l :set list!<CR>

" Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

map <Leader>n <plug>NERDTreeTabsToggle<CR>

let g:airline#extensions#tabline#enabled=0
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable filetype detection
  filetype on
  syntax enable

  autocmd vimenter * if !argc() | NERDTree | endif
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

  au BufRead,BufNewFile *.feature set filetype=gherkin
  au! Syntax gherkin source ~/.vim/bundle/vim-cucumber/syntax/cucumber.vim

  autocmd FileType ruby compiler ruby
  autocmd FileType ruby setlocal sw=2 sts=2 ts=2 expandtab
  autocmd FileType ruby setlocal autoindent
  autocmd FileType ruby let ruby_fold=1
  autocmd FileType ruby setlocal foldlevel=1

  autocmd FileType eruby compiler ruby
  autocmd FileType eruby setlocal sw=2 sts=2 ts=2 expandtab
  autocmd FileType eruby setlocal autoindent

  autocmd FileType javascript setlocal sw=4 sts=4 ts=4 expandtab
  autocmd FileType javascript setlocal autoindent
  autocmd FileType javascript call JavaScriptFold()
  autocmd FileType javascript setlocal foldlevel=1

  autocmd FileType json setlocal sw=4 sts=4 ts=4 expandtab
  autocmd FileType json setlocal autoindent

  autocmd FileType html setlocal sw=4 sts=4 ts=4 expandtab
  autocmd FileType html setlocal autoindent
  autocmd FileType html setlocal foldmethod=indent
  autocmd FileType html setlocal foldlevel=1

  autocmd FileType python setlocal sw=4 sts=4 ts=4 expandtab
  autocmd FileType python setlocal autoindent
endif

