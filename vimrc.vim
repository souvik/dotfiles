call plug#begin('~/.vim/plugged')

" Minimalist Vim Plugin Manager
Plug 'junegunn/vim-plug'

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Color Schemes
Plug 'kreeger/benlight'
Plug 'morhetz/gruvbox'
Plug 'ajh17/spacegray.vim'
Plug 'junegunn/seoul256.vim'
" Status/tabline that light as air
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Ruby specific
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rvm'
" Typescript specific
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Quramy/tsuquyomi'
" HTML5 omnicomplete and syntax
Plug 'othree/html5.vim'
" Rails specific
Plug 'tpope/vim-rails'
" Command-line fuzzy finder in Vim
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" Git wrapper
Plug 'tpope/vim-fugitive'
" Snippet solution
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Silver Searcher compatiable vim plugin
Plug 'mileszs/ack.vim'
" JavaScript specific
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" Vim plugin, insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'
" Check syntax in Vim asynchronously and fix files
Plug 'dense-analysis/ale'
" Dark powered asynchronous completion framework
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
" Seamless navigation between tmux panes and vim splits
Plug 'christoomey/vim-tmux-navigator'

" Initialize plugin system
call plug#end()

" Disabling arrow keys
no <down> <Nop>
no <up> <Nop>
no <left> <Nop>
no <right> <Nop>
ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>

" Set the color scheme used for syntax highlighting
let g:seoul256_background = 233
colorscheme gruvbox

set background=dark
" Showing line numbers all the time
set number
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
" Showing list characters all the times
set list
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=1
set hlsearch

" Shortcut to rapidly toggle 'set list'
map <leader>l :set list!<CR>
" Shortcut to radidly toggle 'NERDTree'
map <leader>n :NERDTreeToggle<CR>

" Airline configuration
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#formatter='unique_tail'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="horizontal"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"

" Enables syntax highlighting for JSDocs
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
" Enables syntax highlighting for Flow
let g:javascript_plugin_flow = 1

" Enable fly mode of auto-pairs
let g:AutoPairsFlyMode = 1
" Use deoplete
let g:deoplete#enable_at_startup = 1
" ack.vim with Ag
let g:ackprg = 'ag --nogroup --nocolor --column'


" FZF specific mappings
nnoremap <leader>t :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>g :Ag<CR>
nnoremap <leader>l :BLines<CR>
nnoremap <leader>L :Lines<CR>

" Ruby specific
autocmd Filetype ruby compiler ruby
" HTML specific
autocmd FileType html setlocal sw=4 sts=4 ts=4 expandtab
" Enables code folding for JavaScript
augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END
