text="
set runtimepath+=$(pwd)
source $(pwd)/main.vim
"

echo "$text" > ~/.vimrc

#install neobundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

mkdir -p ~/.vim/config
