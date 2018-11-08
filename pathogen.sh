mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/ryanoasis/vim-devicons
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/scrooloose/syntastic
git clone https://github.com/ervandew/supertab
git clone https://github.com/sheerun/vim-polyglot
git clone https://github.com/edkolev/promptline.vim
git clone https://github.com/powerline/fonts
git clone https://github.com/rafi/awesome-vim-colorschemes

git clone https://github.com/enricobacis/vim-airline-clock
git clone https://github.com/gcmt/taboo.vim
git clone https://github.com/markvincze/panda-vim
git clone https://github.com/octol/vim-cpp-enhanced-highlight
git clone https://github.com/christoomey/vim-system-copy

cd awesome-vim-colorschemes
cd colors
cd ..
./pull-updates.sh
