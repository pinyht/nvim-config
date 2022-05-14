---------------------------
-- bufferline插件配置
------------------------------
require("bufferline").setup {
    options = {
        -- 使用 nvim 内置lsp
        diagnostics = "nvim_lsp",
        -- 左侧让出 nvim-tree 的位置
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }},
        -- 显示缓冲区数字
        numbers = function(opts)
            return string.format('%s', opts.id)
        end,
    }
}
