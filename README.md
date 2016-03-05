# My dotfiles

## 使用方法:

- 依赖ctags 

系统中需要安装ctags, mac os x可以使用brew安装, ubuntu输入ctags会提示安装命令: sudo apt-get install exuberant-ctags

- 依赖[jedi](https://github.com/davidhalter/jedi) 

安装jedi:

    pip install jedi

- 依赖[flake8](https://pypi.python.org/pypi/flake8)

安装flake8:

    pip install flake8

## 安装

执行下面的命令

    git clone https://github.com/wasw100/dotfiles.git
    cd dotfiles
    ./bootstrap.sh

## 项目中使用到的代码

- 同步脚本参照: [bootstrap](https://github.com/mathiasbynens/dotfiles/blob/master/bootstrap.sh)

- 插件管理: [vim-pathogen](https://github.com/tpope/vim-pathogen)



## submodule中包含下面的库

- 目录树插件: [nerdtree](https://github.com/scrooloose/nerdtree)

- python代码格式: [vim-flake8](https://github.com/nvie/vim-flake8)

- tag: [taglist](https://github.com/vim-scripts/taglist.vim)

- awesome Python autocompletion with VIM: [jedi-vim](https://github.com/davidhalter/jedi-vim)

## git

- 默认没设置config user.email, uer.name, 可以根据git提示设置全局的或者项目的user.name和user.email
