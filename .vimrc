" your search matches will be highlighted 
set hlsearch
" set numberlines in file
set number
" autoreload file if it's changed during your editing
set autoread
" autocomplete for vim commands
set wildmenu
" always show current position 
" delete later maybe
set ruler
" ignore case when searching
set ignorecase
" become case sensitive search when first letter is capitalized
set smartcase
" make search act like modern browsers
" delete later maybe 
set incsearch
" turn on regex
set magic
" show matching brackets when text indicator is over them 
set showmatch
" no annoying bells on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" guess kar 
syntax enable

" kar kar guess kar
set background=dark

" use spaces instead of tabs
set expandtab

" smart 'tab' use
set smarttab

" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4

" auto, smart indent
set ai

" wraplines 
set wrap

" enable code folding 
" use 'wa' to do so
set foldmethod=indent
set foldlevel=99  



" Start vulndle 

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" END Vundle



" START VIM PLUGIN INSTALL
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'

" You complete me Config
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" syntax highlight checking
Plugin 'vim-syntastic/syntastic'
let python_highlight_all=1

" themes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'


" File Browsing
Plugin 'scrooloose/nerdtree'

" Powerline, displays filename 
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


"python3 << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"      project_base_dir = os.environ['VIRTUAL_ENV']
"        activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"          execfile(activate_this, dict(__file__=activate_this))
"          EOF
