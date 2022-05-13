------------------------------
-- nvim_tree插件配置
------------------------------
require'nvim-tree'.setup {
}

-- 快速打开级联目录
vim.g.nvim_tree_group_empty = 1

-- 配置键位映射
-- 打开目录
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true })
-- 刷新目录
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', { noremap = true })
-- 从打开的文件快速定位到目录窗口
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile<CR>',  { noremap = true })

