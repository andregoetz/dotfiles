" -- UI --
set background=dark
colorscheme desert
syntax on  " Enable syntax highlighting
set number relativenumber  " Show relative line numbers
set showcmd  " Show cmd while typing (e.g. "+y)
set showmode  " Show current mode (e.g. -- INSERT --)

" -- Indentation --
set autoindent
set shiftwidth=4  " Indent by 4 spaces when auto-indenting
set softtabstop=4  " Indent by 4 spaces when hitting tab

" -- Behavior --
set backspace=indent,eol,start  " Backspace in insert mode works like normal editor
set fileformat=unix  " \n at for EOL
set splitbelow  " Horizontal splitting a window will put the new window below the current one
set splitright  " Vertical splitting a window will put the new window right of the current one
set clipboard+=unnamedplus
let mapleader = ","

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

" move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" deleting without yanking
nnoremap <leader>x "_x
xnoremap <leader>x "_x
nnoremap <leader>c "_c
xnoremap <leader>c "_c
nnoremap <leader>C "_C
xnoremap <leader>C "_C
nnoremap <leader>d "_d
xnoremap <leader>d "_d
nnoremap <leader>D "_D
xnoremap <leader>D "_D
xnoremap <leader>p "_dP

" -- Plugins --
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'easymotion/vim-easymotion'
Plug 'https://github.com/bkad/CamelCaseMotion'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()

let g:camelcasemotion_key = '<leader>'
let g:VM_maps = {}
let g:VM_maps['Find Under']         = 'gb'           " replace C-n
let g:VM_maps['Find Subword Under'] = 'gb'           " replace visual C-n

