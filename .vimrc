let mapleader = " "
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>h <c-w>h
nmap <leader>j <c-w>j
nmap <leader>k <c-w>k
nmap <leader>l <c-w>l
nmap <leader>f :Files<cr>
nmap <leader><leader> :e ~/.vimrc<cr>
nmap <leader>n :cn<cr>
nmap <leader>p :cp<cr>
nmap <leader>s :sp<cr>
nmap <leader>v :vsp<cr>
nmap <esc> :noh<cr>
inoremap jk <esc>
map <C-f> :Rg<CR>

syntax on
set guicursor=
set noshowmatch
set number
set relativenumber
set hidden
set wildmenu
set backspace=eol,start,indent
set ignorecase
set smartcase
set hlsearch
set incsearch
" set showmatch
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set foldcolumn=1
" syntax enable
if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif
set encoding=utf8
set ffs=unix,dos,mac
set nobackup
set nowritebackup
set noswapfile
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set nowrap
set autoindent
filetype plugin indent on
set smartindent
set termguicolors
set modifiable
set cmdheight=2
set colorcolumn=100
set mouse=a
" highlight ColorColumn ctermbg=0 guibg=lightgrey

" Visual mode pressing * or # searches for the current selection
" From an idea by Michael Naumann
function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>

map <leader>te :tabedit <c-r>=escape(expand("%:p:h"), " ")/<cr>/

map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Return to the last edit position when opening files
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Delete trailing white space on save, useful for some filetypes
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif


call plug#begin()
    Plug 'tpope/vim-fugitive'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'preservim/nerdcommenter'
    Plug 'dense-analysis/ale'
    Plug 'preservim/nerdtree'
    " Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'github/copilot.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vifm/vifm.vim'
    Plug 'morhetz/gruvbox'
    Plug 'ap/vim-buftabline'
    Plug 'tpope/vim-surround'
    Plug 'github/copilot.vim'
call plug#end()

set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

nmap <leader>t :NERDTreeToggle<cr>

" autocmd VimEnter * NERDTree | wincmd p

set tags=tags;/

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1

let loaded_matchparen = 1

" let g:lightline = {
"       \ 'colorscheme': 'gruvbox',
"       \ }

" CoC
" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart<CR>

" FuGITive
nmap <leader>gj :diffget //3<cr>
nmap <leader>gf :diffget //2<cr>
nmap <leader>g :G<cr>
nmap <leader>gb :G blame<cr>
nmap <leader>gs :Git status<cr>
nmap <leader>gc :Git commit<cr>
nmap <leader>gl :Git log<cr>
nmap <leader>gd :Gvdiff<cr>


" Move highlighted text up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Status bar config
set statusline+=%#warningmsg#
set statusline+=%{coc#status()}

" Fix files automatically on save
let g:ale_fixers = {}
let g:ale_javascript_eslint_use_global = 1
let g:ale_linters = {
    \   'javascript': ['eslint'],
    \   'python': ['flake8'],
    \}

let g:ale_fixers = {
    \   'javascript': ['prettier', 'eslint'],
    \   'python': ['autopep8'],
    \}

let g:ale_linters_explicit = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_sign_info = 'ℹ'
let g:ale_fix_on_save = 1
