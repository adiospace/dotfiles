set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
 Bundle 'gmarik/vundle'

" bundles
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kana/vim-smartinput'
Bundle 'ervandew/supertab'
Bundle 'mileszs/ack.vim.git'
Bundle 'matchit.zip'
" file types
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'
Bundle 'wavded/vim-stylus'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'lunaru/vim-less'
" colorschemes
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

set termencoding=utf-8
set encoding=utf-8

set ruler
set hidden

" we use 256 enabled terminals
set t_Co=256

" change the terminal's title
set title

" support all three, in this order
set fileformats=unix,dos,mac
" none of these are word dividers
set iskeyword+=_,$,@,%,#
" ignore these list file extensions
set linespace=2
" turn on line numbers
set number
" shortens messages to avoid 'press a key' prompt
set shortmess=aOstT
" make folding work
set fdm=marker
" keep 10 lines (top/bottom) for scope
set scrolloff=10
" turn on wild mode huge list
set wildmode=list:longest
" turn on command line completion wild style
set wildmenu
" automatically insert comment leader on return, and let gq format comments
set formatoptions=rq
" don't use a pop up menu for completions
set completeopt=
" display unprintable chars
set listchars=tab:▸\ ,eol:¬
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" don't wrap lines
set nowrap
" a tab is 2 spaces
set tabstop=2
set softtabstop=2
" expand tabs by default
set expandtab
" always set autoindenting on
set autoindent
" copy the previous indentation on autoindenting
set copyindent
" number of spaces to use for autoindenting
set shiftwidth=2
" use multiple of shiftwidth when indenting with '<' and '>'
" when at 3 spaces, and I hit > ... go to 4, not 5
set shiftround
" set show matching parenthesis
set showmatch
" ignore case when searching
set ignorecase
" case inferred by default
set infercase
" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase
" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab

" highlight search terms
set hlsearch
" show search matches as you type
set incsearch

" remember more commands and search history
set history=1000
" use many muchos levels of undo
set undolevels=1000

" ignore files we don't need to edit
set wildignore+=*.swp,*.bak,*.pyc,*.class
set wildignore+=*/.git/*,*/.hq/*,*/.svn/*
set wildignore+=*.dll,*.o,*.obj,*.exe
set wildignore+=*.jpg,*.gif,*.png

" no noise please
set noerrorbells visualbell t_vb=

" don't let vim track backups
set nobackup
set noswapfile

" toggle paste
set pastetoggle=<F2>

" enable syntax
syntax enable

" set map leader
let mapleader=","

" always show the status bar
set laststatus=2


set background=dark
colorscheme molokai
" in case you use solarized colorscheme
" let g:solarized_termcolors=256

" make sure all mardown files have the correct filetype set and setup wrapping
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown
" treat JSON files like JavaScript
au BufNewFile,BufRead *.json set ft=javascript
" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79


" NERDTree config
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks") " Store the bookmarks file
let NERDTreeShowFiles=1  " Show hidden files, too
let NERDTreeShowHidden=1 " Quit on opening files from the tree
let NERDTreeQuitOnOpen=1 " Highlight the selected entry in the tree
let NERDTreeHighlightCursorline=1 " Don't display these kinds of files
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$' ]
let g:ctrlp_custom_ignore = {'dir': 'target$\|log$\|logs$\|\.buildcache$'}

" Mappings

" use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
" (it will prompt for sudo password when writing)
cmap w!! w !sudo tee % > /dev/null

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" run Ack fast
nnoremap <leader>a :Ack<Space>
" remove trailing whitespace
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>
" toggle NerdTree
nmap <leader>n :NERDTreeToggle<CR>
" no search highlight
nmap <silent> <C-n> :noh<CR>
" toggle printable chars
nmap <silent> <C-l> :set invlist<CR>
" comment
map <leader>/ <plug>NERDCommenterToggle<CR>
imap <leader>/ <Esc><plug>NERDCommenterToggle<CR>i
