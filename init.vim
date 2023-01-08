set showmatch
set ignorecase
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set cc=80
syntax on
set clipboard=unnamedplus
set cursorline
set wildignore+=node_modules/**,.git/**,intropage/**,productpage/**

call plug#begin("~/.vim/plugged")
    Plug 'ryanoasis/vim-devicons'
    Plug 'scrooloose/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'github/copilot.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'mxw/vim-jsx'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'pangloss/vim-javascript'
call plug#end()

inoremap jk <ESC>
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-c> :NERDCommenterToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-x> :q!<CR>

let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1
let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1
let g:NERDDefaultAlign='left'

let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-vetur',
    \ 'coc-prettier',
    \ 'coc-eslint',
    \ 'coc-stylelint',
    \ 'coc-yaml',
    \ 'coc-python',
    \ 'coc-rls',
    \ 'coc-omnisharp',
    \ 'coc-docker',
    \ 'coc-xml',
    \ 'coc-vimlsp',
    \ 'coc-texlab',
    \ 'coc-markdownlint',
    \ 'coc-pyright',
    \ 'coc-solargraph',
    \ 'coc-svelte',
    \ 'coc-tailwindcss',
    \ 'coc-vimtex',
    \ 'coc-vimlsp',
    \ 'coc-yaml',
    \ 'coc-yank',
    \ 'coc-zig',
    \ ]

nnoremap <silent> <C-p> :FZF<CR>
nnoremap <silent> <C-b> :Buffers<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <C-r> :Rg<CR>

