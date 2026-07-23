" Leader
let mapleader = " "

" Syntax
syntax enable
filetype plugin indent on
colorscheme unokai

augroup transparent_bg
  autocmd!
  autocmd VimEnter,ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
augroup END

" Options
set mouse=a
set number
set relativenumber
set cursorline
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set hlsearch
set incsearch
set scrolloff=8
set updatetime=50
set autoread

" Auto-reload files when changed on disk
augroup autoread_trigger
  autocmd!
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * checktime
augroup END

" Keymaps
nnoremap <leader>e :Ex<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>rw :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <leader>nh :nohlsearch<CR>
nnoremap <leader>sv :vsplit<CR>
nnoremap <leader>sh :split<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprev<CR>
nnoremap <leader>bd :bdelete<CR>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv
