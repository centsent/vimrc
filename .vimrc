"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let is_init=0
let vundle_home = '~/.vim/bundle/Vundle.vim/'
let vundle_readme=expand(vundle_home.'README.md')
if !filereadable(vundle_readme)
	echo "Installing Vundle..."
	echo ""
	silent !mkdir -p ~/.vim/bundle
	silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	let is_init=1
endif

set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.
Plugin 'easymotion/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'The-NERD-Commenter'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'scrooloose/syntastic'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-rails'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'ctrlp-modified.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'juvenn/mustache.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-multiple-cursors'
Plugin 'marijnh/tern_for_vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mxw/vim-jsx'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'python-syntax'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'klen/python-mode'
Plugin 'fatih/vim-go'
Plugin 'Chiel92/vim-autoformat'
Plugin 'Valloric/MatchTagAlways'
" All of your Plugins must be added before the following line
call vundle#end()            " required

if is_init == 1
	echo "Installing Bundles, please ignore key map error messages"
	echo ""
	:PluginInstall
endif
"}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Theme setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
set background=dark
" Colorscheme
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" colorscheme desert
silent! colorscheme solarized  
set guifont=Liberation_Mono_for_Powerline:h14,Source\ Code\ Pro:h14,Menlo:h14

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basic settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set title
set showmode
" Don't redraw while executing macros (good performance config)
set lazyredraw
"Always show current position
set ruler
" Show line number
set number
" Highlight current line
set cursorline
set colorcolumn=80
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" No gui options
set go=
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" Smart indent
set smartindent
" Auto indent
set autoindent
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set linespace=0
set wildmenu
set selection=exclusive
set selectmode=mouse,key
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch
set matchtime=1
set scrolloff=3
set iskeyword+=_,$,@,%,#,-,.
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" Wrap text
set wrap
set showbreak=↪\ 
" Turn on the WiLd menu
set wildmenu
"set mousemodel=popup
" No annoying sound on errors
set noerrorbells
" Set to auto read when a file is changed from the outside
set autoread
" Auto saving file
set autowrite
" Confirmation on unsave/readonly
set confirm
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
" Always show the status line
set laststatus=2
" Height of the command bar
set cmdheight=2
" A buffer becomes hidden when it is abandoned
set hid
" Highlight syntax
syntax enable
syntax on
" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
" Set utf8 as standard encoding and en_US as the standard language
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
" Use Unix as the standard file type
set fileformats=unix,dos,mac
" Set 7 lines to the cursor - when moving vertically using j/k
set scrolloff=7
" Show commands
set showcmd
" For regular expressions turn magic on
set magic
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remap keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map ; to :  and save a million keystrokes
" ex mode commands made easy
nnoremap ; :
let mapleader = ","
let g:mapleader = ","
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autoreload .vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd! bufwritepost .vimrc source ~/.vimrc 
map <silent> <leader>ss :source ~/.vimrc<cr>
map <silent> <leader>ee :e ~/.vimrc<cr> 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Normal Mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent><leader>/ :nohlsearch<CR>
" Fast saving
nnoremap <leader>w :w!<cr>
" Quickly close the current window
nnoremap <leader>q :q<CR>
" Go to home and end using capitalized directions
noremap H ^
noremap L $
" Treat long lines as break lines (useful when moving around in them)
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
" Formatting code
nnoremap <c-f> :Autoformat<CR>
" Move a line of text 
nnoremap <c-j> mz:m+<cr>`z
nnoremap <c-k> mz:m-2<cr>`z

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Insert Mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <C-j> | Escaping!
inoremap <C-j> <ESC>
inoremap <esc> <nop>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual Mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" copy paste cut
vnoremap <Leader>y "+y
vnoremap <Leader>p "+p
vnoremap <leader>x "+d

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:Powerline_symbols='fancy'
let g:airline_theme='wombat'

