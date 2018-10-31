" 使用UTF-8打开文件
set fileencodings=uft-8
set encoding=utf-8
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
filetype plugin on
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
" 全局搜索
nnoremap <Leader>f :CtrlSF 
vmap <Leader>ff <Plug>CtrlSFVwordExec
			
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
Plugin 'Valloric/YouCompleteMe'
" 代码检查
Plugin 'kevinw/pyflakes-vim'
" 自动补全括号
Plugin 'jiangmiao/auto-pairs'
" 文件搜索
Plugin 'kien/ctrlp.vim'
" 全局搜索
Plugin 'dyng/ctrlsf.vim'
" 实时更新文件
Plugin 'djoshea/vim-autoread'
call vundle#end()

"""""powerline""""""
set t_Co=256

"""""youcompleteme""
"是否开启语义补全"
let g:ycm_seed_identifiers_with_syntax=1
"是否在注释中也开启补全"
let g:ycm_complete_in_comments=0
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"开始补全的字符数"
let g:ycm_min_num_of_chars_for_completion=2
"补全后自动关机预览窗口"
let g:ycm_autoclose_preview_window_after_completion=1
" 禁止缓存匹配项,每次都重新生成匹配项"
let g:ycm_cache_omnifunc=1
"字符串中也开启补全"
let g:ycm_complete_in_strings = 1
"回车结束停止自动补全
let g:ycm_key_list_stop_completion = ['<CR>']
"离开插入模式后自动关闭预览窗口"
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"上下左右键行为"
inoremap <expr> <Down>     pumvisible() ? '\<C-n>' : '\<Down>'
inoremap <expr> <Up>       pumvisible() ? '\<C-p>' : '\<Up>'
inoremap <expr> <PageDown> pumvisible() ? '\<PageDown>\<C-p>\<C-n>' : '\<PageDown>'
inoremap <expr> <PageUp>   pumvisible() ? '\<PageUp>\<C-p>\<C-n>' : '\<PageUp>'

"""""ctrlsf"""""
"全局搜索模式normal/compact
let g:ctrlsf_default_view_mode = 'compact'
"忽略文件夹
let g:ctrlsf_ignore_dir = ["client"]
"自动关闭搜索窗口
let g:ctrlsf_auto_close = {"normal": 1, "compact": 1} 
"自动聚焦搜索窗口
let g:ctrlsf_auto_focus = {"at": "done", "duration_less_than": 10000}
"搜索模式
let g:ctrlsf_search_mode = 'async'
"窗口高度
let g:ctrlsf_winsize = '20%'
"额外参数
let g:ctrlsf_extra_backend_args = {'ack': '--ignore-file=match:/tags/'}
"位置
let g:ctrlsf_position = 'right'

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

" 开启行号显示
set number
" 高亮显示当前行
set cursorline
" 高亮显示搜索结果
set hlsearch
" 禁止折行
set nowrap
" 允许用指定语法高亮配色方案替换默认方案
let python_highlight_all=1
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

" 自动开启目录
autocmd VimEnter * NERDTree
" 使用NERDTree插件查看工程文件
nmap <Leader>ls :NERDTreeToggle<CR>
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

" Tag配置
set tags=./tags;$HOME/.vim/tags/python.ctags
map <silent><C-Left> <C-T>
map <silent><C-Right> <C-]>
