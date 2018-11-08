" Use Vim settings rather than Vi settings
set nocompatible

set rtp+=~/.vim/bundle/vim-airline,~/.vim/bundle/dracula

" Pathogen
"execute pathogen#infect()
filetype plugin indent on

" auto install vim-plug on *nix systems
" if has('unix')
"    if empty(glob('~/.vim/autoload/plug.vim'))
"        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"        autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
"    endif
" endif

" vim-plug section
"call plug#begin('~/.vim/plugged')

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'enricobacis/vim-airline-clock'
"Plug 'edkolev/promptline.vim'

" Utilities
"Plug 'scrooloose/nerdtree'
"Plug 'gcmt/taboo.vim'
"Plug 'tpope/vim-fugitive'
"Plug 'git://git.wincent.com/command-t.git'
"Plug 'christoomey/vim-system-copy'

" Color schemes
"Plug 'rafi/awesome-vim-colorschemes'
"Plug 'tomasr/molokai'
"Plug 'fmoralesc/molokayo'
"Plug 'joshdick/onedark.vim'
"Plug 'markvincze/panda-vim'
"Plug 'NLKNguyen/papercolor-theme'
" Plug 'flazz/vim-colorschemes'
"Plug 'junegunn/vim-plug'
" Plug 'dracula/vim'

" Enhanced syntax highlighting
"Plug 'sheerun/vim-polyglot'  
"Plug 'octol/vim-cpp-enhanced-highlight'

"call plug#end()
" end vim-plug section

if (has("termguicolors"))
    set termguicolors
endif

" (START) Plugin Settings & Config ----------------------------------- "

" Airline plugin
let g:airline_theme='dracula'

let g:airline_powerline_fonts = 1
" let g:airline_exclude_preview = 1
" let g:airline_highlighting_cache = 1

" Airline - Tabline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 1
let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline#extensions#tabline#show_splits = 0
" let g:airline#extensions#tabline#show_buffers = 0
" let g:airline#extensions#tabline#exclude_preview = 0
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 1
" let g:airline#extensions#tabline#buffer_nr_show = 0
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

" Airline - Other plugins
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#promptline#enabled = 1
let g:airline#extensions#promptline#snapshot_file = "~/.promptline.sh"

" let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#branch#enabled = 1

"
" Promptline
let g:promptline_preset = {
        \'a'     : [ '$(date +"%I:%m%p")' ],
        \'b'     : [ promptline#slices#host(), promptline#slices#user() ],
        \'c'     : [ promptline#slices#cwd() ],
        \'y'     : [ promptline#slices#vcs_branch() ],
        \'warn'  : [ promptline#slices#last_exit_code() ]}

let g:promptline_powerline_symbols = 1

" YCM config
" let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'  " global
" config fallback path
" let g:ycm_confirm_extra_conf = 0
" let g:ycm_add_preview_to_completeopt = 0
" let g:ycm_autoclose_preview_window_after_completion = 1

" vim.cpp
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1

" Taboo plugin
" set guioptions-=e
" set sessionoptions+=tabpages,globals

" Airline clock
let g:airline#extensions#clock#format = '%I:%M%p'

" (END) Plugin Settings & Config ------------------------------------- "

" Use UTF-8
set encoding=utf-8

" Fonts
set guifont=SourceCodePro\ for\ Powerline:h16

" Color schemes & syntax
syntax on
set t_Co=256

" Disable Background Color Erase (BCE) so color schemes render properly
if &term =~ '256color'
    set t_ut=
endif

set background=dark
colorscheme dracula
let g:dracula_bold=1
let g:dracula_italic=1
let g:dracula_underline=1
let g:dracula_colorterm=1

" let g:airline_theme='onedark'
" let g:onedark_terminal_italics=1
" let g:onedark_termcolors=256
" colorscheme onedark

" Configs for PaperColor
" set background=light or dark
" colorscheme PaperColor
" let g:airline_theme='papercolor'

" Status line
set laststatus=2
set noshowmode        " don't display editing mode

" Tab setting
" Tabs should be converted to a group of 4 spaces
set shiftwidth=4      " number of spaces for auto-indent
set tabstop=4         " number of spaces per tab
set softtabstop=4     " tab size when inserting / pasting
set expandtab
set smarttab        

" Indentation
set smartindent       " auto-indent when adding a brace, etc.
set autoindent        " enable auto-indent on a new line
set copyindent        " copy the previous indentation on auto-indent
set breakindent       " preserve indentation in wrapped text

" Handle long lines / Whitespace
set wrap              " wrap long lines
set textwidth=80
set wrapmargin=10     " number of characters from the right margin
" set colorcolumn=85    show thick vertical border at column 80
set nofoldenable      " fold by default
set foldmethod=indent " fold based on indentation
set foldnestmax=10    " deepest fold level
set foldlevel=1

" Search
set showcmd           " display incomplete commands
set showmatch         " match brackets when editing
set ignorecase        " ignore case when searching
set smartcase         " case-insensitive unless a capital letter is typed
set incsearch         " search as you type
set hidden
set wildmenu          " show autocomplete menus
set hlsearch          " highlight matches

" UI Config
" set clipboard=unnamed " use the * register like unnamed register
set mouse=a
set number            " enable line numbers
set ruler             " enable ruler (line and column info)
set cursorline        " highlight current line
"set showtabline
set title             " show info in the window title
set clipboard^=unnamedplus

" Other
set history=100
set undolevels=100
set noswapfile
set directory=~/.vim-tmp,~/.tmp,~/tmp,/tmp  " store swap files
set autoread  " auto read when a file is changed on disk
set autowrite
"set spell    " highlight spelling mistakes

" Mappings
" Press CTRL-S to save
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a

" Copy/paste from system clipboard
" Visually select and press Ctrl + c
vnoremap <C-c> "*y
vnoremap <C-p> "*p
inoremap <C-v> <ESC>"+p
inoremap <C-v> <ESC>"*p

" Paste from X clipboard
map <leader>pp :r!xsel -p<CR>
map <leader>ps :r!xsel -s<CR>
map <leader>pb :r!xsel -b<CR>
