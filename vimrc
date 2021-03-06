call plug#begin('/Users/tyron/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'powerline/powerline'
"Plug 'vim-syntastic/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'  
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'Valloric/YouCompleteMe'
Plug 'derekwyatt/vim-scala'
Plug 'ktvoelker/sbt-vim'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'avakhov/vim-yaml'
Plug 'pearofducks/ansible-vim'


call plug#end()

let g:ansible_attribute_highlight = "ob"

let g:ansible_name_highlight = 'd'


" YCM 
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1


set nocompatible
set number
set smartindent
set autoindent
set cindent
set visualbell
set noerrorbells
set noswapfile
set clipboard=unnamed

autocmd FileType python setlocal  smartindent shiftwidth=4 ts=4 et cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead,BufNewFile *.conf setf dosini

set runtimepath^=~/.vim/plugged/ag"
set ruler
set mouse=a
set t_Co=256

imap ;; <Esc>

filetype off
let python_highlight_all=1
syntax on
filetype plugin indent on

hi Normal ctermbg=none

" tmux configuration 
nnoremap <silent> vv <C-w>v
let g:tmux_navigator_no_mappings = 1

nnoremap to :tabedit %
nnoremap tc :tabclose

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-u> :TmuxNavigatePrevious<cr>

nnoremap <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vz :VimuxZoomRunner<CR>

" folding 
set foldmethod=manual
set foldlevel=99
set nofoldenable
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

let g:SimpylFold_docstring_preview = 1
" python indentation 
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start

" font / colorscheme related
set background=dark
let g:two_firewatch_italics=1
colorscheme materialbox
"colorscheme zenburn

" nerdtree related
map <C-n> :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>

"quit nerdtree if only him left 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

set runtimepath^=~/.vim/plugged/ctrlp.vim

" ctrlP 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" easy tags related
set tags=~/.vimtags;,tags;
let g:easytags_dynamic_files = 1
let g:easytags_on_cursorhold = 1
let g:easytags_updatetime_min = 4000
let g:easytags_auto_update = 1
let g:easytags_async = 1

nmap <F8> :TagbarToggle<CR>

"startify 
let g:startify_session_dir = '~/.vim/session'
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]



