
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

Plugin 'Gundo'
Plugin 'Markdown'
Plugin 'Python-Documentation'
Plugin 'jedi-vim'
Plugin 'MatlabFilesEdition'
Plugin 'GenerateMatlabFunctionComment'

" Now we can turn our filetype functionality back on
filetype plugin indent on

set shiftwidth=4
set tabstop=4
set background=dark
set hlsearch
syntax on
filetype plugin on
filetype indent on
colo torte
set pastetoggle=<F9>
map <silent> <F9> :!g++ % -o %:r -Wall -g && ./%:r<CR>
map <silent> <F8> :!python %<CR>

set cursorline
set wildmenu


set foldenable	" enable folding
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap gV `[v`]
let mapleader=","
inoremap jk <esc>

" Colors

" UI Config
set number
set showcmd
set lazyredraw
set showmatch

" searching
set incsearch
set hlsearch
