set nocompatible
runtime! config/**/*.vim
call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
let g:ycm_rust_src_path="/home/tyron/Developer/rust-master/src"
hi Normal ctermbg=none
