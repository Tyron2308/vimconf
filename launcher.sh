cp .vim /home/ubuntu/.vim
cp /home/ubuntu/.vim/vimrc .vimrc
git clone https://github.com/tpope/vim-pathogen
cp vim-pathogen/autoload/pathogen.vim /home/ubuntu/.vim/autoload/

rm -rf  .vim/bundle/*
git clone https://github.com/scrooloose/nerdtree /home/ubuntu/.vim/bundle/
git clone https://github.com/derekwyatt/vim-scala /home/ubuntu/.vim/bundle/

