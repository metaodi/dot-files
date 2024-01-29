" pathogen
execute pathogen#infect()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on
"set background=dark
"colorscheme solarized
colorscheme hacker

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Indent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Shortcuts
map ,n :NERDTreeToggle<CR>

" window navigation with Ctrl+hjkl
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Macros
" roam-to-vex formatting
:let @f = "\<Esc>:g/^$/d\<CR>:%s/^.\\{0,3}//\<CR>:%s/^ - /\\r/\<CR>:%s/^# /\\r\\r# /\<CR>"
