------------------------------
-- telescope插件配置
------------------------------
require('telescope').setup{
}
-- 查找文件快捷键
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {noremap=true})
-- 全局搜索快捷键
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {noremap=true})
-- 查找已打开的文件
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", {noremap=true})
-- 查找帮助文件
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {noremap=true})
