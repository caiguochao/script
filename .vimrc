" 使用UTF-8打开文件
set fileencodings=uft-8
" 开启实时搜索
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim自身命令行模式智能补全
set wildmenu
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 定义快捷键的前缀，即<Leader>
let mapleader=";"
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin indent on
" 退格键功能
set backspace=indent,eol,start
" 关闭当前分割窗口
nmap <Leader>q :q<CR>
" 保存当前窗口内容
nmap <Leader>w :w<CR>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 跳转到前一个tab
nmap <Leader>tp :tabp<CR>
" 跳转到下一个tab
nmap <Leader>tn :tabn<CR>
" 关闭当前标签
nmap <Leader>tc :tabc<CR>
" 跳转到第一个标签
nmap <Leader>tf :tabfirst<CR>
" 跳转到最后一个标签
nmap <Leader>tl :tablast<CR>
" 模糊搜索文件
nmap <Leader>e <C-P>
" 当前文件函数列表
nnoremap <Leader>ff :CtrlPFunky<CR>
" 转到定义
nnoremap <Leader>fd :execute 'CtrlPFunky ' . expand('<cword>')<CR>

" Vundle环境设置
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 插件管理工具
Plugin 'VundleVim/Vundle.vim'
" 主题
Plugin 'tomasr/molokai'
" 状态栏
Plugin 'Lokaltog/vim-powerline'
" 目录树
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" 快速注释
Plugin 'scrooloose/nerdcommenter'
" 自动补全
Plugin 'davidhalter/jedi-vim'
" Tab补全
Plugin 'ervandew/supertab'
" pep8检查
Plugin 'tell-k/vim-autopep8'
" 自动补全括号
Plugin 'jiangmiao/auto-pairs'
" 文件搜索
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'fisadev/vim-ctrlp-cmdpalette'
call vundle#end()

"""""powerline""""""
set t_Co=256

" 快速PEP8
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>

" 添加flakes
let g:pyflakes_use_quickfix=1

" 配色方案
set background=dark
colorscheme molokai

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 总是显示状态栏
set laststatus=2
" 开启行号显示
set number
" 高亮显示当前行
set cursorline
" 高亮显示搜索结果
set hlsearch
" 禁止折行
set nowrap
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 自动缩进
filetype indent on
" python缩进定制
autocmd FileType python setlocal ts=4 sts=4 sw=4 noet
" 设置编辑时制表符占用空格数
set tabstop=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 不将制表符扩展为空格
set noexpandtab

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 忽略显示文件
let NERDTreeIgnore=['\.pyo','\.pyc']

" 设置环境保存项
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
" 保存 undo 历史
set undodir=~/.undo_history/
set undofile
