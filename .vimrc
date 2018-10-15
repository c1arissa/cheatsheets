set rtp+=/home/clar/.local/lib/python2.7/site-packages/powerline/bindings/vim

" Not vi compatible
set nocompatible

" Load Pathogen Plugins
execute pathogen#infect()
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"set a global config
" file as a fallback path to a config file if none is found
" let g:ycm_key_list_select_completion = ['<Enter>', '<TAB>']
let g:ycm_confirm_extra_conf = 0
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1


" vim powerline setup
let g:minBufExplForceSyntaxEnable = 1
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

set guifont=Inconsolata\ for\ Powerline:h14

" Syntax highlighting
syntax enable
filetype on           " enable filetype detection
filetype indent on    " enable filetype indenting
filetype plugin on    " enable filetype plugins

" Disable Background Color Erase (BCE) so color schemes render properly
if &term =~ '256color'
    set t_ut=         " clearing uses the current background color
endif

" Color scheme
set t_Co=256          " number of colors the terminal can render
set background=dark
colorscheme dracula
let g:dracula_bold=1
let g:dracula_italic=1
let g:dracula_underline=1
let g:dracula_colorterm=1

" Airline plugin
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1

let g:airline_exclude_preview = 1
let g:airline_highlighting_cache = 1

"let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_close_button = 1
let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#exclude_preview = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#buffer_nr_show = 0


"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
" let g:airline#extensions#promptline#snapshot_file = "~/.shell_prompt.sh"
let g:airline#extensions#promptline#enabled = 1
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#eclim#enabled = 1

let g:airline#extensions#branch#enabled = 1

" UI Config
set encoding=utf-8
set clipboard=unnamed " use the * register like unnamed register
set mouse=a
set number            " enable line numbers
set ruler             " enable ruler (line and column info)
set cursorline        " highlight current line
set showtabline
set title             " show info in the window title

" Status bar / Last line
set showcmd
set showmode          " display current mode (insert/command/visual/etc.)
set laststatus=2
set wildmenu          " autocomplete command menu

" Search Settings
set incsearch         " search as characters are typed
set hlsearch          " highlight matches
set showmatch         " match brackets when editing
set ignorecase
set smartcase         " case-insensitive unless a capital letter is typed

" Whitespace & Tabs
set wrap              " wrap long lines
set textwidth=80
" set colorcolumn=80    show thick vertical border at column 80
set autoindent        " enable auto-indent on a new line
set copyindent        " copy the previous indentation on auto-indent
set breakindent       " preserve indentation in wrapped text
set smartindent       " clever auto-indenting
set expandtab
set tabstop=4         " number of spaces per tab
set softtabstop=4     " tab size when inserting / pasting
set shiftwidth=4      " number of spaces for auto-indent
set nofoldenable      " fold by default
set foldmethod=indent " fold based on indentation
set foldnestmax=10    " deepest fold level
set foldlevel=1


" Other
set history=100
set undolevels=100
set noswapfile
set directory=~/.vim-tmp,~/.tmp,~/tmp,/tmp  " store swap files
set autoread  " auto read when a file is changed on disk
"set spell    " highlight spelling mistakes
