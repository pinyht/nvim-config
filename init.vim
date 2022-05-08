"------------------------------
" Neovim配置文件
"------------------------------

"------------------------------
" 基础配置
"------------------------------

"保存配置立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC
"开启文件类型检测
filetype on
"检测到不同类型文件加载对应插件
filetype plugin on
"开启实时搜索功能
set incsearch
"搜索时大小写不敏感
set ignorecase
"关闭兼容模式,去掉有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible
"vim 自身命令行模式智能补全
set wildmenu
"开启语法高亮显示
syntax enable
"允许用指定语法高亮配色方案替换默认方案
syntax on
"底部显示最后一条操作指令
set showcmd
"开启鼠标支持
set mouse=a
"禁止光标闪烁
set gcr=a:block-blinkon0
"禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"禁止显示菜单和工具条,按F2呼出
set guioptions-=m
set guioptions-=T
"设置帮助文档为中文
set helplang=cn
"设置utf-8编码
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
"总是显示状态栏
set laststatus=2
"显示光标当前位置
set ruler
"开启行号显示
set number
"高亮显示当前行和列
set cursorline
set cursorcolumn
"高亮显示搜索结果
set hlsearch
"自动换行
set wrap
"自适应不同语言的智能缩进 
filetype indent on
"将制表符扩展为空格 
set expandtab
"设置编辑时制表符占用空格数
set tabstop=4	
"设定 << 和 >> 命令移动时的宽度为4
set shiftwidth=4
"让 vim 把连续数量的空格视为一个制表符 
set softtabstop=4
"解决 shiftwidth 和 tabstop 不等时的麻烦
set smarttab
"不在单词中间折行
set lbr
"解决中文乱码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
"记录历史的行数
set history=1000
"设定vim颜色为256色
set t_Co=256
"开启边界线
set cc=120
"vim使用自动对齐，也就是把当前行的对齐格式应用到下一行
set autoindent
"打开状态栏标尺
set ruler
"插入括号时，短暂地跳转到匹配的对应括号
set showmatch
"开启新行时使用智能自动缩进
set smartindent
"设置在状态行显示的信息
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%Y-%m-%d\ -\ %H:%M\")}
"外部文件改变时自动读取改变后的文本
set autoread
"当运行宏时，不重绘 
set lazyredraw 
"光标移动到buffer的顶部和底部时保持10行距离, 或set so=10
set scrolloff=10
"设置命令行高度,在状态栏下面
set cmdheight=1
"除了 $ . * ^ 之外其他元字符都要加反斜杠
set magic
"关闭错误声音提示
set noerrorbells
set novisualbell
set t_vb=
"匹配括号时闪烁十分之四秒时间
set mat=4
"关闭swp等备份文件
set nobackup
set nowb
set noswapfile
"解决backspace键不管用而且安方向键会出现ABCD
set backspace=start,indent,eol
"自动切换当前目录
"set autochdir
""设置自动加载tag文件,若找不到就自动往父级找
set tags=tags;
"解决ssh或者终端下vim按shift+o会停顿一会的问题,将键位超时时间设短
"set timeoutlen=250
"默认使用系统剪贴板,方便和外部复制粘贴
"set clipboard^=unnamed,unnamedplus
"内置终端在底部显示
set splitbelow
"新文件在右边显示
set splitright
"自动关闭代码提示预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"set re=1
"set ttyfast
"set lazyredraw

"------------------------------
" vim插件管理
" 插件管理脚本地址https://github.com/junegunn/vim-plug
"------------------------------
call plug#begin()
"加入monokai主题插件
Plug 'tanvirtin/monokai.nvim'
"加入中文文档
Plug 'yianwillis/vimcdoc'
"加入nvim-treesitter插件,增强代码高亮
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"加入nvim-tree插件,支持文件目录
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
"加入bufferline插件,支持tab标签
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
"加入telescope插件,支持全局搜索
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"加入注释插件
Plug 'tpope/vim-commentary'
"加入nvim-lsp-installer插件,支持自动安装lsp
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
"加入nvim-cmp插件,支持代码补全
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
" For luasnip users.
" Plug 'L3MON4D3/LuaSnip'
" Plug 'saadparwaiz1/cmp_luasnip'
" For ultisnips users.
" Plug 'SirVer/ultisnips'
" Plug 'quangnguyen30192/cmp-nvim-ultisnips'
" For snippy users.
" Plug 'dcampos/nvim-snippy'
" Plug 'dcampos/cmp-snippy'
call plug#end()


"------------------------------
" 主题配置
"------------------------------
"使用monokai主题
colorscheme monokai_soda
"设置字体
set guifont=Monaco:h12


"------------------------------
" nvim-treesitter插件配置
"------------------------------
"加载lua配置
lua require('config/nvim-treesitter')


"------------------------------
" nvim-tree插件配置
"------------------------------
"加载lua配置
lua require('config/nvim-tree')
"快速打开级联目录
let g:nvim_tree_group_empty = 1
"打开目录
nnoremap <C-n> :NvimTreeToggle<CR>
"刷新目录
nnoremap <leader>r :NvimTreeRefresh<CR>
"从打开的文件快速定位到目录窗口
nnoremap <leader>n :NvimTreeFindFile<CR>


"------------------------------
" bufferline插件配置
"------------------------------
"启用彩色显示
set termguicolors
lua require('config/bufferline')


"------------------------------
" telescope插件插件配置
"------------------------------
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"------------------------------
" nvim-lsp-installer插件插件配置
"------------------------------
lua require('config/nvim-lsp-installer')



"------------------------------
" nvim-cmp插件插件配置
"------------------------------
set completeopt=menu,menuone,noselect
lua require('config/nvim-cmp')
