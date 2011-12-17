call pathogen#infect()

if has('gui_running')
"	colorscheme fruity
    colorscheme irblack
else
    colorscheme irblack
	"colorscheme evening
endif

autocmd!

syntax enable
set number "this makes vim show line numbers
set history=25
set showmode
set showcmd
set expandtab
set backspace=2
set tabstop=4
set ruler
set softtabstop=4
set tabstop=4
set shiftwidth=4
set ruler
if version >= 700
	set showtabline=1
endif
set nolist
set nomodeline
set nowrap
set autoindent
set formatoptions-=u
set fileformat=unix
set fileencodings=ucs-bom,utf-8,default,latin1
set fileencoding=utf-8
set shellslash

filetype on
filetype indent on
filetype plugin on

au FileType c,slang,cxx,h,hpp,hxx set cindent softtabstop=4 tabstop=4 shiftwidth=4 expandtab
au FileType c set formatoptions+=ro
au FileType perl,pl set smartindent
au FileType py set smartindent expandtab shiftwidth=4 softtabstop=4 tabstop=4 textwidth=79 foldmethod=indent
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.rb match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.rb match BadWhitespace /^\t\+/
au FileType css set smartindent
au FileType html,css set noexpandtab tabstop=4
au FileType java set smartindent
au FileType make set noexpandtab shiftwidth=8
au FileType ruby,Gemfile set smartindent tabstop=2 expandtab softtabstop=2 shiftwidth=2

set ignorecase
set smartcase

set incsearch
abbreviate teh the
abbreviate bsae base


