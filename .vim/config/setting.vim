:imap ;; <Esc>
set number
set smartindent
set autoindent
set ruler
set mouse=a
syntax on
colorscheme Tomorrow-Night
set t_Co=256
inoremap(()<left>
set cursorline
set foldenable
nnoremap b ^
nnoremap e $
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap <leader>a :Ag
inoremap <Ctrl-i> :tabnew<CR>
hi Normal guibg=NONE ctermbg=NONE

