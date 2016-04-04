set nocompatible              " latest vim configuratoin 

source ~/.vim/plugins.vim

syntax on


"--------------- Indentation ---------------"
set tabstop=2   
set expandtab
set softtabstop=2
set shiftwidth=2
set smarttab
set encoding=utf-8
set autoindent


"--------------- Visualization ---------------"
set t_CO=256                                  "Use 256 colors terminal
set title                                     " Show title in window bar
set linespace=15
set number


"--------------- Split management ---------------"
" Faster cursor movement when splitting window
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>


"--------------- Ignore files ---------------"
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js,*.swp
set wildignore+=*/smarty/*,*/vendor/*,*/node_modules/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*
set wildmenu                  " Hitting TAB in command line to show completions
set wildmode=list:longest

" Exclude file for CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'


"--------------- Search ---------------"
set hlsearch
set incsearch


"--------------- Browser code ---------------"
" Speed up viewport scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>


"--------------- Mappings ---------------"
let mapleader=','

" Open vimrc quickly
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Turn off highlight
nmap <Leader><space> :nohlsearch<cr>

" Toggle nerd tree quickly
nmap <Leader>nn :NERDTreeToggle<cr>                 

" Search via variable/function (need ctags to work)
nmap <c-r> :CtrlPBufTag<cr>

" Let CtrlP only search current directory
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_cmd = 'CtrlP .'

" Evaluate clojure code with fireplace
nmap <c-e> :Eval<cr>


"--------------- Misc ---------------
set clipboard=unnamed         " Fixed copy and paste to clipboard error


"--------------- Plugins ---------------
" -- NerdTree
let NERDTreeHijackNetrw = 0

" -- vim-markdown
set nofoldenable                        " Don't fold markdown automatically
let g:vim_markdown_folding_disabled=1


"--------------- Auto Commands ---------------
"Source vimrc everytime saved
augroup autosourcing
  autocmd!
  autocmd BufWritePost .vimrc source %
augroup END

"Set cljc syntax as clj
au BufNewFile,BufRead *.cljc set filetype=clojure
