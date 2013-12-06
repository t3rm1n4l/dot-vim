filetype off

call pathogen#runtime_append_all_bundles()
filetype plugin indent on
set nocompatible
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set history=1000
set undolevels=1000
set encoding=utf-8
set scrolloff=3
set autoindent
set copyindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80
set list
set listchars=tab:▸\ ,eol:¬
syntax on
set background=dark
colorscheme molokai

nnoremap / /\v
vnoremap / /\v
set ignorecase
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

source ~/.vim/bundle/cscope/cscope_maps.vim
source ~/.vim/bundle/python_matchit/python_match.vim
source ~/.vim/bundle/A/a.vim


let g:alternateExtensions_cc = "hh,h"
let g:alternateExtensions_hh = "cc"

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" allow toggling between local and default mode
function TabToggle()
  if &expandtab
    set noexpandtab
  else
    set expandtab
  endif
endfunction
nmap <F9> mz:execute TabToggle()<CR>'z
autocmd BufNewFile,BufReadPost *.go set filetype=go
autocmd BufNewFile,BufReadPost *.go call TabToggle()
autocmd FileType go autocmd BufWritePre <buffer> Fmt
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
nmap <F8> :TagbarToggle<CR>
map <F2> :NERDTreeToggle<CR>

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

set completeopt=menuone,longest,preview
