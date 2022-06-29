set number
"set mouse=a " use right-click to copy paste instead, otherwise things crash!
set numberwidth=1
set clipboard+=unnamedplus
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set termguicolors
set sw=2
set relativenumber
so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/maps.vim

let g:gruvbox_contrast_dark = "hard"
"let g:codedark_italics = 1
set background=dark
colorscheme gruvbox
"colorscheme codedark
highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode

au BufNewFile,BufRead *.html set filetype=htmldjango
if has('nvim')
	lua require'colorizer'.setup()
endif

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"set conceallevel=0
