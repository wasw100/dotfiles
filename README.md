# My dotfiles

使用方法:

    git clone https://github.com/wasw100/dotfiles.git
    ./bootstrap.sh

然后修改 ~/.vimrc中的

    let g:pydiction_location
为自己对应的目录


同步脚本参照: [bootstrap](https://github.com/mathiasbynens/dotfiles/blob/master/bootstrap.sh)

插件管理: [vim-pathogen](https://github.com/tpope/vim-pathogen)



## 下面的github库添加到sumodule中
目录树插件: [nerdtree](https://github.com/scrooloose/nerdtree)

 python自动补全: [pydiction](https://github.com/rkulla/pydiction)

 python代码格式: [vim-flake8](https://github.com/nvie/vim-flake8)

tag: [taglist](https://github.com/vim-scripts/taglist.vim)

需要os上安装ctags, mac os x可以使用brew安装, ubuntu: sudo apt-get install exuberant-ctags

awesome Python autocompletion with VIM: [jedi-vim](https://github.com/davidhalter/jedi-vim)

需要安装 [jedi](https://github.com/davidhalter/jedi) pip install jedi
