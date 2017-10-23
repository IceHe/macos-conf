" .vimrc "

set clipboard=unnamed

let mapleader = ','

" Save
imap <C-S> <Esc><C-S>a
map <C-S> :w<CR>

" Search
" 设置大小写敏感和聪明感知（小写全搜，大写完全匹配）
set ignorecase

" Swith Tab
map <S-H> gT
map <S-L> gt
map <leader>a 1gt
map <leader>s 2gt
map <leader>d 3gt
map <leader>f 4gt
map <leader>g 5gt
map <leader>h 6gt
map <leader>j 7gt
map <leader>k 8gt
map <leader>l 9gt
map <leader>; 10gt
map <leader>1 11gt
map <leader>2 12gt
map <leader>3 13gt
map <leader>4 14gt
map <leader>5 15gt
map <leader>6 16gt
map <leader>7 17gt
map <leader>8 18gt
map <leader>9 19gt
map <leader>10 20gt

" Mimic Emacs in Insert Mode
inoremap <C-F> <Left>
inoremap <C-B> <Right>

inoremap <C-A> <Home>
inoremap <C-E> <End>

" Forward|Backward Word (End)
inoremap <C-N> <Esc>ea
inoremap <C-P> <Esc>gea

" Del to End of Line
inoremap <C-K> <Esc>lDa
" Del to Head of Line
inoremap <C-U> <Esc>d0xi
" Exchange Chars
inoremap <C-T> <esc>xpli

" Copy to EOL (without the line break)
map <S-Y> v$hy

language en_US

" Tab == 4 Whitespaces
set ts=4
set shiftwidth=4
set expandtab
set autoindent

" Line Break
set wrap

" Line Number
set nu

" Toggle Line Number
map <leader>n :set nu!<CR> " Toggle

" Toggle Relative Line Number
map <leader>r :set rnu!<CR> " Toggle

" iMproved
if &compatible
  set nocompatible
endif

" Encoding
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" Undo
set undofile
set undodir=~/.vim/undo/

filetype plugin indent on

" Fix YankRing Bug
let g:yankring_clipboard_monitor=0

" crontab
if $VIM_CRONTAB == "true"
    set nobackup
    set nowritebackup
endif

" Line Comment
map <leader>c ^i//<Esc>
map <leader><S-C> ^xx<Esc>

" HTML Comment
map <leader>h ^i<!-- <Esc>$a --><Esc>
map <leader><S-H> ^xxxxx$xxxx

