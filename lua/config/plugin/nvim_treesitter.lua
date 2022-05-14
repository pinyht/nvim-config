------------------------------
-- nvim_treesitter插件配置
------------------------------
require'nvim-treesitter.configs'.setup {
  -- 增加所有支持的语言列表
  ensure_installed = "all",
  -- 是否同步安装解析器
  sync_install = false,
  -- 启用代码高亮功能
  highlight = {
    enable = true,
    -- 禁用vim自带的语法高亮
    additional_vim_regex_highlighting = false,
  },
  -- 启用增量选择
  incremental_selection = {
      enable = true,
      keymaps = {
          -- 回车进入增量选择模式
          init_selection = '<CR>',
          -- 继续回车扩大选取
          node_incremental = '<CR>',
          -- 退格缩小选取
          node_decremental = '<BS>',
          -- tab选择整个代码块
          scope_incremental = '<TAB>',
      }
  },
  -- 启用基于Treesitter的代码格式化(=) 
  indent = {
      enable = true
  }
}
