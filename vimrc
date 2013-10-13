set nocp " 不兼容vi模式

"判定当前操作系统类型
if(has("win32") || has("win64"))
    let g:iswindows=1
else
    let g:iswindows=0
endif

" 1. basic
if has("gui_running") " 设置GVIM字体及大小
    colorscheme monokai " 主题
    if has("gui_gtk2")
	set guifont=Consolas\ 13
    endif
else
   colorscheme elflord
endif

set number " 显示行号
set ru " 打开状态栏标尺
syntax on " 关键字上色
syntax enable
set backspace=indent,eol,start "允许退格键的使用

" 编码
set fenc=UTF-8
set encoding=UTF-8
set fileencodings=UTF-8,GBK,SHIFT-JIS,CP936,LATIN-1
set langmenu=zh_CN.UTF-8 " 中文菜单
language message zh_CN.UTF-8 " 中文提示信息


" 2. edit settings

set spell

" 缩进
if has("autocmd")
    filetype plugin indent on "根据文件类型进行缩进
    augroup vimrcEx
        au!
        autocmd FileType text setlocal textwidth=80
        autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \ exe "normal! g`\"" |
                    \ endif
    augroup END
else
    set autoindent "智能缩进
endif

set smarttab
set cindent " c语言的缩进方式
set shiftwidth=4 " 4格缩进
set tabstop=8 " 制表符宽度8

" 换行，搜索
set lbr " 不在单词中间断行
set wildmenu " 在命令模式下使用 Tab 自动补全的时候，将补全内容使用一个漂亮的单行菜单形式显示出来。
set nowrap " 不自动换行
set hlsearch " 高亮搜索结果
set incsearch " 实时匹配要搜索的文字


" 3. c/c++
set cin " c/c++ 风格的自动缩进，代码美化

