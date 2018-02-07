
"""""Vundle 配置""""
set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"""""My Plugin""""
Plugin 'altercation/vim-colors-solarized'
let g:solarized_termcolors=16
let g:solarized_termtrans=1
syntax enable
set background=dark
colorscheme solarized

Plugin 'majutsushi/tagbar'
"nmap <Leader>tb :TagbarToggle<CR>        "快捷键设置
let g:tagbar_ctags_bin='ctags'            "ctags程序的路径
let g:tagbar_width=30                    "窗口宽度的设置
map <F3> :Tagbar<CR>


Plugin 'scrooloose/nerdtree'
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>


Plugin 'mbbill/undotree'
nnoremap <F4> :UndotreeToggle<cr>
if has("persistent_undo")  
	set undodir=~/.undodir/  
	set undofile  
endif  

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled = 1 "打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
let g:airline#extensions#tabline#buffer_nr_show = 1 "我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"

Plugin 'Valloric/YouCompleteMe'
"回车即选中当前项 
inoremap <expr> <CR>  pumvisible() ? "\<C-y>" : "\<CR>"  

Plugin 'Lokaltog/vim-easymotion'
let g:EasyMotion_smartcase = 1
map <Leader><leader>. <Plug>(easymotion-repeat)   " 重复上一次操作, 类似repeat插件, 很强大

Plugin 'ctrlp.vim'
Plugin 'ctrlp-funky'
noremap <C-p> : CtrlPMRU
let g:ctrlp_switch_buffer = 'et'  "如果一个文件已经打开，会在新框里再次打开它，而非切换到当前方框。 
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux

Plugin 'auto-pairs'


""""""""""""""""Python相关
set encoding=utf-8
Plugin 'scrooloose/syntastic'
let python_highlight_all=1

Plugin 'python-mode'
let g:pymode_options_colorcolumn = 0


""""其他快捷键设置"""
let mapleader=','

"""设置用<Leader>+n切换tab
noremap <silent><tab>m :tabnew<cr>
noremap <silent><tab>e :tabclose<cr>
noremap <silent><tab>n :tabn<cr>
noremap <silent><tab>p :tabp<cr>
noremap <silent><leader>t :tabnew<cr>
noremap <silent><leader>g :tabclose<cr>
noremap <silent><leader>1 :tabn 1<cr>
noremap <silent><leader>2 :tabn 2<cr>
noremap <silent><leader>3 :tabn 3<cr>
noremap <silent><leader>4 :tabn 4<cr>
noremap <silent><leader>5 :tabn 5<cr>
noremap <silent><leader>6 :tabn 6<cr>
noremap <silent><leader>7 :tabn 7<cr>
noremap <silent><leader>8 :tabn 8<cr>
noremap <silent><leader>9 :tabn 9<cr>
noremap <silent><leader>0 :tabn 10<cr>
noremap <silent><s-tab> :tabnext<CR>
inoremap <silent><s-tab> <ESC>:tabnext<CR>

"""切换工作台
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Enable folding with the spacebar
nnoremap <space> za

set nu 		"设置行号 
set incsearch     	 " 开启实时搜索功能      
set ignorecase  	 " 搜索时大小写不敏感 
set wildmenu 		 " vim 自身命令行模式智能补全   
set ai  		"开启自动缩进  
set smartindent 	 "开启智能对齐  
set laststatus=2 	 "总是显示状态栏  
set cursorline 		 "高亮显示当前行/列  
syntax enable 		 " 开启语法高亮功能  
syntax on		 " 允许用指定语法高亮配色方案替换默认方案  
set number
set tabstop=8
set shiftwidth=4
set softtabstop=4
set autoindent
"set foldmethod=indent	  " 基于缩进或语法进行代码折叠"  
set nofoldenable  " 启动 vim 时关闭折叠代码  


call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""
"Quickly Run
""""""""""""""""""""""
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!time python2.7 %"
	elseif &filetype == 'html'
		exec "!firefox % &"
	elseif &filetype == 'go'
		"        exec "!go build %<"
		exec "!time go run %"
	elseif &filetype == 'mkd'
		exec "!~/.vim/markdown.pl % > %.html &"
		exec "!firefox %.html &"
	endif
endfunc


set history=1000   "记录历史数
filetype on ""检测文件类型 

noremap <F7> :set syntax=off<CR>

""检查代码
map <F6> :call FormartSrc()<CR><CR>
"定义FormartSrc()
func FormartSrc()
	exec "w"
	if &filetype == 'c'
		exec "!astyle --style=ansi -a --suffix=none %"
	elseif &filetype == 'cpp' || &filetype == 'hpp'
		exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
	elseif &filetype == 'perl'
		exec "!astyle --style=gnu --suffix=none %"
	elseif &filetype == 'py'||&filetype == 'python'
		exec "r !autopep8 -i --aggressive %"
	elseif &filetype == 'java'
		exec "!astyle --style=java --suffix=none %"
	elseif &filetype == 'jsp'
		exec "!astyle --style=gnu --suffix=none %"
	elseif &filetype == 'xml'
		exec "!astyle --style=gnu --suffix=none %"
	else
		exec "normal gg=G"
		return
	endif
	exec "e! %"
endfunc
"结束定义FormartSrc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
"set foldenable      " 允许折叠  
""set foldmethod=manual   " 手动折叠  
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
" 显示中文帮助
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 显示行号
set number
" 历史记录数
set history=1000
"搜索逐字符高亮
set hlsearch
set incsearch
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags的设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Sort_Type = "name"    " 按照名称排序
let Tlist_Use_Right_Window = 1  " 在右侧显示窗口
let Tlist_Compart_Format = 1    " 压缩方式
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer
""let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags
""let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树
"let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的
"设置tags
set tags=tags;
set autochdir 

set showcmd         " 输入的命令显示出来，看的清楚些  

