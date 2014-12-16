# My dotfiles

使用方法:

1. 系统中需要安装ctags, mac os x可以使用brew安装, ubuntu输入ctags会提示安装命令: sudo apt-get install exuberant-ctags
2. 依赖[jedi](https://github.com/davidhalter/jedi) 
    
    sudo pip install jedi

3. 然后执行下面的命令

    git clone https://github.com/wasw100/dotfiles.git
    cd dotfiles
    git submodule init
    git submodule update
    ./bootstrap.sh

同步脚本参照: [bootstrap](https://github.com/mathiasbynens/dotfiles/blob/master/bootstrap.sh)

插件管理: [vim-pathogen](https://github.com/tpope/vim-pathogen)



## 下面的github库添加到sumodule中
目录树插件: [nerdtree](https://github.com/scrooloose/nerdtree)

 python自动补全: [pydiction](https://github.com/rkulla/pydiction)

 python代码格式: [vim-flake8](https://github.com/nvie/vim-flake8)

tag: [taglist](https://github.com/vim-scripts/taglist.vim)

awesome Python autocompletion with VIM: [jedi-vim](https://github.com/davidhalter/jedi-vim)
