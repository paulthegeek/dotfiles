set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on     " required

call plug#begin('~/.vim/plugged')

" Install the awesomeness
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-runner'
Plug 'elzr/vim-json'
Plug 'flazz/vim-colorschemes'
Plug 'gabebw/vim-spec-runner'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'justinmk/vim-syntax-extra'
Plug 'kien/ctrlp.vim'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'ntpeters/vim-better-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'pbrisbin/vim-mkdir'
Plug 'scrooloose/nerdtree'
Plug 'slim-template/vim-slim'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'

call plug#end()


" Leader
let mapleader= ","

set backspace=2
set nobackup
set nowritebackup
set noswapfile

" Speed up switching between normal and insert mode
set timeoutlen=1000 ttimeoutlen=0

" Set command history
set history=50

" Show cursor position
set ruler

" Always shows status of last command excuted
set laststatus=2

" Automatically write before running commands
set autowrite

syntax enable
colorscheme atom

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Show line numbers
set number
set numberwidth=2

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Set ctrl-p to show at top of window
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_show_hidden = 1

" This is for html snippets to work
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails,ruby-2.0'

" Use <Leader>t to run the current spec file.
map <Leader>t <Plug>RunCurrentSpecFile

" Use <Leader>u to run the current line in a spec.
map <Leader>u <Plug>RunFocusedSpec

" Use <Leader>v to explicitly run the most recent spec.
map <Leader>v <Plug>RunMostRecentSpec

" Vim-Tmux-Runner
let g:VtrClearSequence="clear"
nmap <leader>o :VtrOpenRunner({'orientation': 'h', 'percentage': 35})<CR>

" Vim-Spec-Runner
let g:spec_runner_dispatcher = 'call VtrSendCommand("bundle exec {command}")'
let g:disable_write_on_spec_run = 1
map <leader>t <plug>RunCurrentSpecFile
map <leader>s <plug>RunFocusedSpec
map <leader>l <plug>RunMostRecentSpec
