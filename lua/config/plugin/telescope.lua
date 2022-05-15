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
-- 跳转到lsp定义
vim.api.nvim_set_keymap("n", "gd", "<cmd>Telescope lsp_definitions<CR>", {noremap=true})
-- 跳转到lsp接口实现
vim.api.nvim_set_keymap("n", "gi", "<cmd>Telescope lsp_implementations<CR>", {noremap=true})
-- 列出lsp所有引用
vim.api.nvim_set_keymap("n", "gr", "<cmd>Telescope lsp_references<CR>", {noremap=true})
-- 工作区诊断
vim.api.nvim_set_keymap("n", "go", "<cmd>Telescope diagnostics<CR>", {noremap=true})
