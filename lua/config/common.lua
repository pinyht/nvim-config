------------------------------
-- 通用配置
------------------------------
-- 保存配置后立即生效
vim.cmd("autocmd BufWritePost $HOME/.config/nvim/* source % | redraw")
-- 开启24bit真彩色
vim.cmd("set termguicolors")
-- 搜索时大小写不敏感
vim.cmd("set ignorecase")
-- 开启鼠标支持
vim.o.mouse="a"
-- 设置帮助文档为中文
vim.o.helplang="cn"
-- 开启行号显示
vim.cmd("set number")
-- 高亮显示当前行和列
vim.cmd([[
set cursorline
set cursorcolumn
]])
-- 将制表符扩展为空格 
vim.cmd("set expandtab")
-- 设置编辑时制表符占用空格数
vim.o.tabstop=4
-- 设定 << 和 >> 命令移动时的宽度为4
vim.o.shiftwidth=4
-- 让 vim 把连续数量的空格视为一个制表符 
vim.o.softtabstop=4
-- 开启边界线
vim.o.cc="20"
-- 插入括号时，短暂地跳转到匹配的对应括号
vim.cmd("set showmatch")
-- 开启新行时使用智能自动缩进
vim.cmd("set smartindent")
-- 光标移动到buffer的顶部和底部时保持10行距离, 或set so=10
vim.cmd("set scrolloff=10")
-- 关闭swp等备份文件
vim.cmd([[
set nobackup
set nowb
set noswapfile
]])
-- 解决ssh或者终端下vim按shift+o会停顿一会的问题,将键位超时时间设短
--vim.o.timeoutlen=250
-- 默认使用系统剪贴板,方便和外部复制粘贴
--vim.cmd("set clipboard^=unnamed,unnamedplus")
-- 切分窗口在底部和右边显示
vim.cmd([[
set splitbelow
set splitright
]])
-- 自动关闭代码提示预览窗口
vim.cmd("autocmd InsertLeave * if pumvisible() == 0|pclose|endif")



