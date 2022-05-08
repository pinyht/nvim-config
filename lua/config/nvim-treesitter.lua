require'nvim-treesitter.configs'.setup {
    -- 安装 language parser
    -- :TSInstallInfo 命令查看支持的语言
    ensure_installed = {"java", "vim", "lua", "go"},
    -- 启用代码高亮功能
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
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
        --keymaps = {
        --    init_selection = "gnn",
        --    node_incremental = "grn",
        --    scope_incremental = "grc",
        --    node_decremental = "grm",
        --},
    },
    -- 启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
    indent = {
        enable = true
    }
}
-- 开启 Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.wo.foldlevel = 99
