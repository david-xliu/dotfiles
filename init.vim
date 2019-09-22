" enable theme
if (has("nvim"))
	"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
	"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
	"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
	" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

"plugins
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
	Plug 'https://github.com/joshdick/onedark.vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'https://github.com/scrooloose/nerdtree.git'
	Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/nerdcommenter'
call plug#end()

let g:onedark_hide_endofbuffer = 1
syntax on
colorscheme onedark

inoremap jj <Esc>
inoremap jk <Esc>
inoremap kj <Esc>

set mouse=a
set number
set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=2    " Indents will have a width of 4

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set smarttab	    " make the tab key (in insert mode) insert spaces 
		    " or tabs to go to the next indent of the next 
		    " tabstop when the cursor is at the beginning of a 
		    " line (i.e. the only preceding characters are whitespace).

" Change default nerdtree arrows for directories
let g:NERDTreeDirArrowExpandable = '·'
let g:NERDTreeDirArrowCollapsible = '·'
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1


hi Directory guifg=#c0c0c0
hi NERDTreeDirSlash guifg=#777777
hi NERDTreeCWD guifg=#cccccc
hi NerdTreeFlags guifg=#aa9269

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#mike#enabled = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#branch#format = 0
let g:airline_detect_spelllang=0
let g:airline_detect_spell=0
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_c = '%f%m'
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = '%l:%c'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
