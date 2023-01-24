nnoremap <SPACE> <Nop>
let mapleader = " "
set noswapfile
set nohidden
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
" set clipboard=unnamedplus
set cursorline
set wildignore+=node_modules/**,.git/**,intropage/**,productpage/**,*.gz,*.zip,*.png,*.csv,*.whl

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
    Plug 'puremourning/vimspector'
    " Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    " Plug 'vim-python/python-syntax'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
    Plug 'easymotion/vim-easymotion'
call plug#end()

" let g:python_highlight_all = 1

inoremap jk <ESC>
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :qa<CR>
nnoremap <leader>W :wq<CR>
nnoremap <leader>s :split<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>co :copen<CR>
nnoremap <leader>cq :cclose<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-c> :NERDCommenterToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Vimspector config
" let g:vimspector_enable_mappings = 'HUMAN'
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dR :call vimspector#Reset()<CR>
nnoremap <leader>dc :call vimspector#Continue()<CR>

nnoremap <leader>db :call vimspector#ToggleBreakpoint()<CR>
nnoremap <leader>dB :call vimspector#ClearBreakpoints()<CR>
nnoremap <leader>ds :call vimspector#Stop()<CR>

nmap <leader>di :call vimspector#StepInto()<CR>
nmap <leader>do :call vimspector#StepOut()<CR>
nmap <leader>dn :call vimspector#StepOver()<CR>
nmap <leader>dp :call vimspector#Pause()<CR>
nmap <leader>dr :call vimspector#Restart()<CR>


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
nnoremap <silent> <C-s> :Rg<CR>

nnoremap <silent> <leader>pp :MarkdownPreviewToggle<CR>
nnoremap <silent> <leader>= :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

