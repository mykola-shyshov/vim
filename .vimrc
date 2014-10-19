colorscheme molokai

nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
vmap <c-u> <ESC>
imap <c-u> <ESC>
imap <c-space> <c-x><c-o>
" unmap <S-#>
nmap <S-#> <S-^>
noremap <space> za

" Commenting blocks of code.
autocmd FileType c,cpp,java,javascript let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> <c-c> :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <c-x> :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

syntax on

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set pastetoggle=<F2>
set foldmethod=indent
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
set number
set ignorecase
" Always show status line
set laststatus=2
" Respect modeline in files
set modeline
set modelines=4
set mouse=a
" Show the cursor position
set ruler
" Show the filename in the window titlebar
set title
" Start scrolling three lines before the horizontal window border
set scrolloff=3

autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript

" bundle
set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/yegappan/mru.git'
Plugin 'https://github.com/kien/ctrlp.vim.git'

Plugin 'https://github.com/tomtom/tlib_vim.git'
Plugin 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Plugin 'https://github.com/garbas/vim-snipmate.git'

set rtp+=~/.vim/bundle/vundle/
call vundle#end()

filetype plugin indent on
filetype plugin on

