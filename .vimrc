"""""""""""""Plug 插件管理
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"在这里安装插件
Plug 'kien/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
"Plug 'w0rp/ale'
Plug 'python-mode/python-mode'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-smooth-scroll'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-expand-region'
Plug 'majutsushi/tagbar'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdcommenter'
Plug 'Raimondi/delimitMate'
" Initialize plugin system
call plug#end()
"PlugInstall [name ...] [#threads]	Install plugins
"PlugUpdate [name ...] [#threads]	Install or update plugins
"PlugClean[!]	Remove unused directories (bang version will clean without prompt)
"PlugUpgrade	Upgrade vim-plug itself
"PlugStatus	Check the status of plugins
"PlugDiff	Examine changes from the previous update and the pending changes
"PlugSnapshot[!] [output path]	Generate script for restoring the current snapshot of the plugins






"""""""""""""System Setting 系统设置
syntax on
syntax on
set number
set tabstop=4
set shiftwidth=4
let mapleader=','
set autochdir    "自动切换路径到文件目录
filetype plugin on


set splitbelow
set splitright
"快捷键，ctrl+l切换到左边布局，ctrl+h切换到右边布局
"ctrl+k切换到上面布局，ctrl+j切换到下面布局
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""""""""""""调整窗口大小
noremap h <NOP>
noremap j <NOP>
noremap k <NOP>
noremap l <NOP>


"""设置主题
let g:onedark_termcolors = 256
colorscheme onedark


"""""""""""""vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 2, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 2, 1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>


""""""""""""""设置fzf
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>


""""""""""""""设置 Asynchronous Lint Engine
nmap <Leader>en <Plug>(ale_next)
nmap <Leader>ep <Plug>(ale_previous)
nmap <Leader>ee :ALEToggle<CR> 



""""""""""""""设置 NERDTree
map <F2> :NERDTreeToggle<CR>

let NERDTreeWinPos="left"
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
"""关闭 vim 的时候如果只剩下 NERDTree, 那么自动关闭 NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



"""""""""""""""设置lightline 下面的状态栏
set laststatus=2
set noshowmode
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }



""""""""""""""设置python-mode
map <F7> :PymodeLintAuto<CR> 
let g:pymode_rope = 0
let g:pymode_lint_checkers = ['pyflakes']
let g:pymode_trim_whitespaces = 0
let g:pymode_options = 0
let g:pymode_rope = 0

let g:pymode_indent = 1
let g:pymode_folding = 0
let g:pymode_options_colorcolumn = 1
let g:pymode_breakpoint_bind = '<leader>br'
let g:pymode_python = 'python3'

let g:pymode_doc = 1 " 通过命令:PymodeDoc arg查阅文档
let g:pymode_doc_bind = 'K' "光标移到参数上面按快捷键K

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all


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



"""""""""""""""设置Tagbar
nmap <silent> <F3> :TagbarToggle<CR>        "按F9即可打开tagbar界面
let g:tagbar_width = 30                                     "设置tagbar的宽度为30列，默认40

" Go to definition else declaration
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 主动调用补全
let g:ycm_key_invoke_completion = '<C-a>'


""""""""""""""""vim-easymotion
" 更改快捷键
map f <Plug>(easymotion-prefix)
map ff <Plug>(easymotion-s)
map fs <Plug>(easymotion-f)
map fl <Plug>(easymotion-lineforward)
map fj <Plug>(easymotion-j)
map fk <Plug>(easymotion-k)
map fh <Plug>(easymotion-linebackward)
" 忽略大小写
let g:EasyMotion_smartcase = 1



