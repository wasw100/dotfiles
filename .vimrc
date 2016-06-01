" http://vim.wikia.com/wiki/Change_the_color_scheme
" colorscheme morning
" http://vim.wikia.com/wiki/Switch_color_schemes
colorscheme elflord
set mouse=a
set clipboard=unnamed

" 修改backspace的工作模式
set backspace=indent,eol,start

" 字体
set guifont=Monaco:h15
" set guifont=Courier\ New:h15
" set guifont=Lucida_Console:h15

" 设置vim的编码识别序列 http://www.zhihu.com/question/22363620/answer/21199296
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1

" 显示行数
set number

" tab缩进
set expandtab
set tabstop=8
set shiftwidth=4
set softtabstop=4

" 搜索高亮
set hlsearch

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" 快速切换窗口
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-f> <C-w>v

" tab快捷键设置 http://vim.wikia.com/wiki/Alternative_tab_navigation
" tab navigation like firefox
nnoremap <C-t>     :tabnew<CR>

" set auto load file when be edited by other program
" set autoread

" search ignore character case
" set ignorecase

set cmdheight=2

" show status
" set laststatus=2
" http://got-ravings.blogspot.hk/2008/08/vim-pr0n-making-statuslines-that-own.html
" set statusline=%<%F\ [%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

" https://github.com/tpope/vim-pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" https://github.com/scrooloose/nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

" :Tlist              调用TagList
" taglist  按F2按钮，出现taglist的窗口
nnoremap <silent> <F2> :TlistToggle<CR><CR>
" let Tlist_Show_One_File=0                    " 只显示当前文件的tags
" let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window=1                 " 在右侧窗口中显示
" let Tlist_File_Fold_Auto_Close=1             " 自动折叠

" flake8快捷键, 默认是F7
autocmd FileType python map <buffer> <F3> :call Flake8()<CR>

" jedi https://github.com/davidhalter/jedi-vim
let g:jedi#completions_command = "<C-Space>"

autocmd FileType python noremap <buffer> <C-b> :exec '!python' shellescape(@%, 1)<CR>

" Add the virtualenv's site-packages to vim path
" https://segmentfault.com/a/1190000000405249
" https://github.com/GTxx/dotfiles/blob/master/.vimrc
if has('python')
py << EOF
import os.path
import sys
import vim

def get_py(venv):
   for name in os.listdir(venv + '/lib'):
	if name.startswith('python'):
	    return name

if 'VIRTUAL_ENV' in os.environ:
    venv = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, os.path.join(venv, 'lib', get_py(venv), 'site-packages'))
EOF
endif
