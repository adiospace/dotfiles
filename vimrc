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
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kana/vim-smartinput'
Bundle 'ervandew/supertab'
Bundle 'mileszs/ack.vim.git'
Bundle 'matchit.zip'
" colorschemes
Bundle 'tomasr/molokai'

filetype plugin indent on     

set ruler
set hidden
set t_Co=256
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" don't wrap lines
set nowrap        
" a tab is four spaces
set tabstop=2     
" always set autoindenting on
set autoindent    
" copy the previous indentation on autoindenting
set copyindent    
" number of spaces to use for autoindenting
set shiftwidth=2  
" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround    
" set show matching parenthesis
set showmatch     
" ignore case when searching
set ignorecase    
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
set wildignore=*.swp,*.bak,*.pyc,*.class
" change the terminal's title
set title                
" don't beep
set visualbell           
set noerrorbells         
" no fuss with swp files or backups 
set nobackup
set noswapfile
" enable os paste
set pastetoggle=<F2>
" enable syntax
syntax enable
" use dark backgrounds
set background=dark
" set map leader
let mapleader=","
" always show the status bar
set laststatus=2  
" set colorscheme to molokai
colorscheme molokai
" use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
" (it will prompt for sudo password when writing)
cmap w!! %!sudo tee > /dev/null %"
" make sure all mardown files have the correct filetype set and setup wrapping
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown 
" treat JSON files like JavaScript
au BufNewFile,BufRead *.json set ft=javascript
" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
