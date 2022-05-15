------------------------------
-- toggleterm插件配置
------------------------------
require'toggleterm'.setup {
    function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    -- 打开终端快捷键
    open_mapping = [[<leader>t]],
    -- 默认浮动展示
    direction = 'float',
    -- 浮动窗口配置
    float_opts = {
        -- 宽度
        width = 150,
        -- 高度
        height = 40,
    },
}
