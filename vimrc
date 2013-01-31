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
Bundle 'SirVer/ultisnips'
" colorschemes
Bundle 'adrianolaru/vim-adio'
" nice to try plugins
"Bundle 'Lokaltog/vim-powerline'
"Bundle 'Lokaltog/vim-easymotion'

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
" set showmatch
" ignore case when searching
set ignorecase
" case inferred by default
set infercase
" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase
" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab

" highlight search terms
" set hlsearch
" show search matches as you type
set incsearch

" remember more commands and search history
set history=1000
" use many muchos levels of undo
set undolevels=1000

set cursorline

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

" used to make vertical bar
set fillchars=vert:\│

colorscheme adio

" treat JSON files like JavaScript
au BufNewFile,BufRead *.json setf javascript

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" NERDTree config
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks") " Store the bookmarks file
let NERDTreeShowFiles=1  " Show hidden files, too
let NERDTreeShowHidden=1 " Quit on opening files from the tree
let NERDTreeQuitOnOpen=1 " Highlight the selected entry in the tree
let NERDTreeHighlightCursorline=1 " Don't display these kinds of files
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$' ]

" CtrlP config
let g:ctrlp_custom_ignore = {'dir': 'target$\|log$\|logs$\|\.buildcache$\|node_modules$'}

" UltiSnips config
let g:UltiSnipsListSnippets="<c-l>"

" Mappings

" use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
" (it will prompt for sudo password when writing)
cmap w!! w !sudo tee % > /dev/null

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Tabs navigation
nnoremap tt :tabedit<Space>
nnoremap td :tabclose<CR>
nnoremap tc :tabclose<CR>
nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tn :tabnext<Space>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tm :tabm<Space>

" toggle NerdTree
nmap <leader>n :NERDTreeToggle<CR>

" edit vimrc quick
nmap <leader>e :edit $MYVIMRC<CR>
nmap <leader>r :source $MYVIMRC<CR>

" run Ack fast
nnoremap <leader>a :Ack<Space>

" remove trailing whitespace
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>

" comment
map <leader>/ <plug>NERDCommenterToggle<CR>
imap <leader>/ <Esc><plug>NERDCommenterToggle<CR>i

" Show syntax highlighting groups for word under cursor
nmap <leader>p :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
