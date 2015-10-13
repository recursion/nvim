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
Plugin 'jelera/vim-javascript-syntax'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

"############################################

" theme/colors
set background=dark
colorscheme pablo

" Syntax highlighting
syntax enable

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Status line
set laststatus=2
set ruler

set statusline=   " clear the statusline for when vimrc is reloaded

set statusline+=%#warningmsg#                " syntastic warning
set statusline+=%{SyntasticStatuslineFlag()} " syntastic status
set statusline+=%*                           " highlight

set statusline+=B%n>\                        " buffer number
set statusline+=\                            " space
set statusline+=%-5.(%l,%c%V%)\ %<%-3P       " line/column info

set statusline+=\                            " space
set statusline+=\ \|                         " seperator
set statusline+=\                            " space

set statusline+=\ %-5f\                      " file name

set statusline+=\                            " space
set statusline+=\ \|                         " seperator
set statusline+=\                            " space
set statusline+=%*                           " highlight
set statusline+=%-5{fugitive#statusline()}   " fugitive status
set statusline+=%*                           " highlight
"set statusline+=\ Char:\ %b,0x%-6B\         " current char

set statusline+=\                            " space
set statusline+=\ \|                         " seperator
set statusline+=\                            " space

set statusline+=%=                           " right align
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format

" setup syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_tidy_exec = 'tidy5'

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

" show existing tab with 2 spaces
set tabstop=2

" when indenting with '>', use 2 spaces width
set shiftwidth=2

" On pressing tab, insert 2 spaces
set expandtab

" Turn visual bell on
set vb

" Show me what I'm doing
set showcmd

set clipboard=unnamed

autocmd FileType javascript,rust,c,cpp,html,ruby,python,coffeescript autocmd BufWritePre <buffer> StripWhitespace

" Custom keymappings
map <C-t> :NERDTreeToggle<CR>
map <C-l> :lclose<CR>
map <C-k> :lopen<CR>
