"""""""""""
" plugins "
"""""""""""
call plug#begin('~/.local/share/nvim/plugged')

" nerdtree
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin'

" development
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'dense-analysis/ale'
Plug 'lervag/vimtex'
" Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-commentary' " comments

" nice UI things
Plug 'mhinz/vim-startify' " neat start screen for vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'projekt0n/github-nvim-theme'
Plug 'vimpostor/vim-lumen' " auto light/dark theme based on system preferences
Plug 'ryanoasis/vim-devicons' " needs to be last

call plug#end()
"""""""""""
" plugins "
"""""""""""

" Define the options dictionary for custom github_theme config
let g:github_theme_options = {
      \ 'transparent': v:true,
      \ }
" Call the setup function with the above options
call luaeval('require("github-theme").setup({options = _A})', g:github_theme_options)

let g:go_fmt_command = "goimports"
" enable syntax highlighting for Go
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
syntax on

let g:airline_theme='minimalist'

let g:lumen_light_colorscheme = 'github_light_default'
let g:lumen_dark_colorscheme = 'github_dark_default'

" Some custom mappings
inoremap jj <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
nmap <> :NERDTreeToggle<CR>
map <C-w>j <C-W>j
map <C-w>k <C-W>k
map <C-w>h <C-W>h
map <C-w>l <C-W>l
:command NT NERDTree

" cursor settings
set guicursor=a:hor20

" vim-tex
let g:tex_flavor = 'latex'

" Status bar settings
" set background=dark
" set statusline=%=%c\ %f\ %m\ %P
" set fillchars=vert:\ ,stl:\ ,stlnc:\
" set laststatus=2
" hi StatusLine guibg=None

" Change default NERDTree arrows for directories
let g:NERDTreeDirArrowExpandable = '·'
let g:NERDTreeDirArrowCollapsible = '·'
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1

" NERDTree colours
hi Directory guifg=#c0c0c0
hi NERDTreeDirSlash guifg=#777777
hi NERDTreeCWD guifg=#cccccc
hi NerdTreeFlags guifg=#aa9269

" FocusMode *Wip* doesn't work well with NERDTree on
function! ToggleFocusMode()
    if (&foldcolumn != 3)
        set laststatus=0
        set numberwidth=5
        set foldcolumn=3
        set noruler
        set nonumber
    else
        set laststatus=2
        set numberwidth=4
        set foldcolumn=0
        set ruler
        set number
    endif
endfunc
nnoremap <C-f>m :call ToggleFocusMode()<cr>

" Ale settings
let g:ale_sign_error = '✕'
let g:ale_sign_warning = '!'
highlight ALEWarningsign guifg=#cda377
let g:ale_lint_on_insert_leave = 1
let g:ale_linters = {'cpp': ['g++']}
let g:ale_cpp_cc_options = '-Wall -O2 -std=c++17'

" misc settings
set wildmenu
set linebreak
set mouse=a
set number
set tabstop=4       " The width of a TAB is set to 2.
set shiftwidth=4    " Indents will have a width of 2
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set smarttab	      " :help smarttab
set foldmethod=syntax
set foldlevelstart=20
