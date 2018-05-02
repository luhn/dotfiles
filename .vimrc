set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'altercation/vim-colors-solarized'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-surround'
Plugin 'kburdett/vim-nuuid'

" Highlighting plugins
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'exu/pgsql.vim'
Plugin 'bkad/vim-terraform'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'leafgarland/typescript-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable
set background=light
colorscheme solarized
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set number
set nowrap
set hlsearch

set ignorecase
set smartcase

" Splits
set splitbelow
set splitright

" Disable beep
set visualbell

" Code folding
" nnoremap <space> za
" set foldmethod=indent
" set foldnestmax=2

" 4-space tabs only for Python and HTML
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype typescript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype html setlocal noexpandtab tabstop=2 shiftwidth=2
autocmd Filetype xml setlocal noexpandtab tabstop=2 shiftwidth=2

" Column at 80th char for PEP8.
set colorcolumn=80
set ruler

map <S-Enter> O<Esc>
map <CR> o<Esc>

au BufNewFile,BufRead *.pt set filetype=xml

map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
nnoremap <C-j> <C-w>h
nnoremap <C-k> <C-w>l

" Space + char inserts single char
function! RepeatChar(char, count)
  return repeat(a:char, a:count)
endfunction
nnoremap <Space> :<C-U>exec "normal a".RepeatChar(nr2char(getchar()), v:count1)<CR>

" Set spacebar to fold/unfold
" Decided to get rid of this because I never use folding
" nnoremap <space> za
" vnoremap <space> zf
" set nofoldenable  " Don't fold by default

" Integrate with Mac clipboard
set clipboard=unnamed

" Use GitHub markdown
augroup markdown
	au!
	au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Use Postgres-flavored SQL highlighting
let g:sql_type_default = 'pgsql'
