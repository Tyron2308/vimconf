
	git clone https://github.com/tpope/vim-pathogen
	cp vim-pathogen/autoload/pathogen.vim .vim/autoload/
	rm -rf  .vim/bundle/*

	git clone https://github.com/scrooloose/nerdtree .vim/bundle/nerdtree
	git clone https://github.com/derekwyatt/vim-scala .vim/bundle/vim-scala
	git clone https://github.com/Shougo/neocomplete.vim.git .vim/bundle/neocomplete.vim
	git clone https://github.com/airblade/vim-gitgutter.git .vim/bundle/vim-gitgutter
	git clone https://github.com/easymotion/vim-easymotion.git .vim/bundle/vim-easymotion
	git clone https://github.com/python-mode/python-mode.git .vim/bundle/vim-python

	cp -r vimconf/.vim /home/$USER/
	cp /home/$USER/vimconf/.vimrc /home/$USER/.vimrc

	rm -rf vim-pathogen
