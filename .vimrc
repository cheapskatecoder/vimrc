set shell=/bin/bash
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
Plugin 'file:///home/gmarik/path/to/plugin'
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

:imap jj <Esc>
nnoremap tt :update<cr>

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

:imap jj <Esc>
noremap tt :update<cr>
noremap ff :set paste<cr>
noremap vv :set nopaste<cr>
map <C-n> :NERDTreeToggle<CR>
set laststatus=2

Plugin 'Chiel92/vim-autoformat'
noremap <F3> :Autoformat<CR>

let g:ycm_use_ultisnips_completer = 1

nmap gb :Gblame<cr>
nmap gs :Gstatus<cr>
nmap gc :Gcommit -v<cr>
nmap ga :Git add -p<cr>
nmap gm :Gcommit --amend<cr>
nmap gp :Gpush<cr>
nmap gd :Gdiff<cr>
nmap gw :Gwrite<cr>

noremap qr :q<cr>

noremap snonu :set nonu<cr>
noremap snu :set nu<cr>

let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file

" highlight line cursor on 
set cursorline

filetype indent on                                                                                                                                                                                                                            
" shows brackts match
"These two allow us to move around lines visually. So if there's a very long line that gets visually wrapped to two lines,
" j won't skip over the fake part of the visual line in favor of the next real line.
nnoremap j gj
nnoremap k gk

let mapleader=","

" enable spellcheck
" use z= to get suggestions
" :set spell spelllang=en_us
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

nnoremap <C-f> :Files<CR>
