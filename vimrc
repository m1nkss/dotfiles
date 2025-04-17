set nocompatible
set number
set cursorline
set shiftwidth=4
set tabstop=4
set noexpandtab
set nobackup
set noswapfile
set nowrap
set wildmenu
set mouse=
syntax on
filetype plugin indent on
highlight cursorLine ctermbg=237
colorscheme zenburn
set hlsearch
set incsearch
set lazyredraw

let mapleader="ù"
nnoremap <leader>d :vsp<CR>
nnoremap <leader>e <C-W><C-W>
nnoremap <leader>t :tabe<CR>
nnoremap <leader>ff :Files<CR>

call plug#begin()
	Plug 'raimondi/delimitmate'
	Plug 'tpope/vim-sensible'
	Plug 'dense-analysis/ale'
	Plug 'junegunn/fzf.vim'
call plug#end()

autocmd BufRead,BufNewFile *.c if expand('%:p:h') =~ 'cursus42' | execute 'Stdheader' | endif

let g:ale_linters = {'c': ['clang'], 'cpp': ['clang']}
let g:ale_fixers = {'c': ['clang-format']}

let g:user42 = 'mameerbe'
let g:mail42 = 'mameerbe@student.s19.be'
