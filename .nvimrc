set nocompatible

"############################################

"Get Vundle up and running
set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Misc Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'
Plugin 'suan/vim-instant-markdown'
Plugin 'rust-lang/rust.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'htacg/tidy-html5'

" Colorschemes
Plugin 'sickill/vim-monokai'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

"############################################

" Syntax highlighting
syntax enable

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" setup statusline for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" setup syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_tidy_exec = 'tidy5'
" colorscheme (works in both gvim and vim)
" only set if exists
silent! colorscheme atom-dark-256
"set background=dark
"colorscheme solarized

" Status line
set laststatus=2

" when moving between searches, center the selected line
nnoremap n nzz
nnoremap N Nzz

" No backup, no swap
set nobackup
set noswapfile

" Allow the mouse....
set mouse=a

" Show line numbers
set number
"set relativenumber

" "Scrolling"
"set scrolloff=5

" Do tabbing correctly
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

" Turn visual bell on
set vb

" Show me what I'm doing
set showcmd

" Highlight search results
"set hlsearch

set clipboard=unnamed

autocmd FileType javascript,rust,c,cpp,html,ruby,python,coffeescript autocmd BufWritePre <buffer> StripWhitespace

nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" Custom keymappings
map <C-t> :NERDTreeToggle<CR>
map <C-l> :lclose<CR>
map <C-k> :lopen<CR>
