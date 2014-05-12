nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
nmap <c-u> <ESC>
vmap <c-u> <ESC>
imap <c-u> <ESC>
imap <c-space> <c-x><c-o>

" Commenting blocks of code.
autocmd FileType c,cpp,java,javascript let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> <c-c> :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <c-x> :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

noremap <space> za
colorscheme molokai
syntax on
set expandtab
set tabstop=4
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
" Automatic commands
if has("autocmd")
        " Enable file type detection
        filetype on
        " Treat .json files as .js
        autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif

" bundle
"filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" jscomplete
Bundle 'https://github.com/teramako/jscomplete-vim.git'
Bundle 'https://github.com/Shougo/neocomplcache.vim.git'
autocmd FileType javascript
    \ :setl omnifunc=jscomplete#CompleteJS
let g:jscomplete_use = ['dom', 'moz']

" supporting finding files, displays menu
set runtimepath^=~/.vim/bundle/ctrlp.vim

