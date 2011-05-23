" https://github.com/blever/dotfiles/
"
" =============================================================================
" Dependencies - Libraries/Applications outside of vim
" =============================================================================
" Rake & Ruby for command-t


" =============================================================================
" Plugins included
" =============================================================================
" Pathogen
"     Better Management of VIM plugins 
"
" Commant-T
"     Allows easy search and opening of files within a given path 
"

" =============================================================================
" Shortcuts
" =============================================================================
let mapleader=","                   " change the leader to be a comma vs slash

" Open Command-T file search
map <leader>f :CommandT<CR>


" =============================================================================
" Pathogen - Allows us to organize our vim plugins
" =============================================================================
" Load pathogen with docs for all plugins
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


" =============================================================================
" Basic Settings
" =============================================================================
syntax on                           " Syntax highlighting
filetype on                         " Try to detect filetypes
filetype plugin indent on           " Enable laoding indent file for filetype
set number                          " Display line numbers
set title                           " Show title in console title bar

""" Show trailing whitespace and spaces before a tab
highlight ExtraWhitespace guibg=orange
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

""" Moving around and editing
set cursorline                      " Have a line indicate the cursor location
set nowrap                          " Don't wrap text
set showmatch                       " Briefly jump to a paren once it's balanced
set ruler                           " Show the cursor position all the time
set autoindent                      " Alway set autoindeting on
set tabstop=2                       " <tab> inserts 2 spaces
set shiftwidth=2                    " An indent level is 4 spaces
set expandtab                       " Use spaces, not tabs, for autoindent/tab key.

""" Searching and Patterns
set ignorecase                      " Default to using case insensitive searches,
set smartcase                       " unless uppercase lettes are used in regex.
set hlsearch                        " Highlight searches by default.
set incsearch                       " Incrementally search while typing a regex
highlight Search ctermbg=cyan ctermfg=black gui=bold

""" GUI settings
set guifont=courier_new:h11         " Font settings
set mouse=a                         " Allow use of mouse for file scrolling, etc.

""" Plugin settings
let g:CommandTMaxHeight=15          " Command-T displays top 15 matches only


" =============================================================================
" Haskell
" =============================================================================
" use ghc functionality for haskell files
au Bufenter *.hs compiler ghc

