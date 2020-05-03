set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

    Plug 'morhetz/gruvbox'
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " code autocomplete
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
    Plug 'pangloss/vim-javascript'
    Plug 'evanleck/vim-svelte'
    Plug 'vim-erlang/vim-erlang-compiler'
"    Plug 'scrooloose/nerdtree'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    let g:UltiSnipsExpandTrigger = "<tab>"
    let g:UltiSnipsJumpForwardTrigger = "<tab>"
    let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
    Plug 'alvan/vim-closetag'
    let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.vue,*.phtml,*.js,*.jsx,*.coffee,*.erb'
    Plug 'jiangmiao/auto-pairs'
    Plug 'christoomey/vim-tmux-navigator'
	Plug 'jakwings/vim-pony'
call plug#end()



filetype plugin indent on
syntax on
set laststatus=2
set encoding=utf-8
set autowrite
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

set mouse=a

set number
set backspace=indent,eol,start
set t_Co=256


" window switching
:nmap <silent> <C-h> :wincmd h<CR>
:nmap <silent> <C-j> :wincmd j<CR>
:nmap <silent> <C-k> :wincmd k<CR>
:nmap <silent> <C-l> :wincmd l<CR>


" disable ctrl-z
nnoremap <c-z> <nop>

" colorscheme
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark='default'

" colors
highlight Search term=reverse ctermbg=24 guibg=#005F87
highlight SpellRare term=reverse ctermbg=24 guibg=#005F87
highlight DiffAdd term=reverse ctermbg=24 guibg=#005F87
highlight GoDebugBreakpoint term=reverse ctermfg=0 ctermbg=88 guifg=Black guibg=#63001C
highlight GoDebugCurrent term=reverse ctermbg=24 guibg=#005F87

" air-line
let g:airline_theme='minimalist'
let g:airline_solarized_bg='dark'

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_symbols.branch = '⦥'
let g:airline_symbols.readonly = '⒭'
let g:airline_symbols.linenr = '♛'

let g:airline#extensions#tabline#enabled = 1

" nerdtree
" autocmd vimenter * NERDTree " partenza allo start
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" let NERDTreeShowHidden=1
" let NERDTreeIgnore = [ '__pycache__', '\.pyc$', '\.o$', '\.swp',  '*\.swp',  'node_modules/' ]
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
" let NERDTreeShowBookmarks=1
" map <C-y> :NERDTreeToggle<CR>




