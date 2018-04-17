set nocompatible
set number
set smartindent
set autoindent
set ruler
set mouse=a
set t_Co=256
:imap ;; <Esc>

call pathogen#infect()
filetype off
syntax on
filetype plugin indent on
hi Normal ctermbg=none

autocmd FileType java setlocal omnifunc=javacomplete#Complete

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case= 1
let g:neocomplete#source#syntax#min_keyword_length= 3
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif

let g:neocomplete#keyword_patterns['default'] = '\h\w*'

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list= 1
let g:syntactic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:syntastic_erlang_checkers = ['syntastic-checkers-elixir']
let g:syntastic_scala_checkers = ['syntastic-checkers-scala']

