" -- UI --
set background=dark
colorscheme desert
syntax on  " Enable syntax highlighting
set number  " Show line numbers
set showcmd  " Show cmd while typing (e.g. "+y)
set showmode  " Show current mode (e.g. -- INSERT --)

" -- Indentation --
set autoindent
set shiftwidth=4  " Indent by 4 spaces when auto-indenting
set softtabstop=4  " Indent by 4 spaces when hitting tab

" -- Behavior --
set backspace=indent,eol,start  " Backspace in insert mode works like normal editor
set fileformat=unix  " \n at for EOL
set omnifunc=syntaxcomplete#Complete  " Enable omni completion (IntelliSense like)
set splitbelow  " Horizontal splitting a window will put the new window below the current one
set splitright  " Vertical splitting a window will put the new window right of the current one

" -- Searching --
set ignorecase  " Ignore case in search patterns
set smartcase  " Override the 'ignorecase' option if the search pattern contains upper case characters
set incsearch  " Search while typing

" -- Shortcuts --
" In insert or command mode, move by using Ctrl
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

" copy, paste, delete with system clipboard
set clipboard+=unnamed  " Enable system clipboard
noremap y "+y
noremap yy "+yy
noremap p "+p
noremap P "+P
noremap d "+d
noremap dd "+dd

" move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" -- Plugins --
call plug#begin()

