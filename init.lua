------------------------------
-- Neovim配置引导
------------------------------
-- 加载通用配置
require('config/common')
-- 加载插件目录
require('plugin')


-- 获取所有配置方法
getFileName = function (str)
    local str = string.match(str, ".+/([^/]*%.%w+)$")
    local idx = str:match(".+()%.%w+$")
    if(idx) then
        return str:sub(1, idx-1)
    else
        return str
    end
end

local config_path = "~/.config/nvim/lua/config/" -- 配置文件目录
-- 加载插件配置
local plugin_paths = vim.split(vim.fn.glob(config_path .. 'plugin/*.lua'), '\n')
for i, file in pairs(plugin_paths) do
    require("config/plugin/"..getFileName(file))
end

-- 加载lsp配置
local lsp_paths = vim.split(vim.fn.glob(config_path .. 'lsp/*.lua'), '\n')
for i, file in pairs(lsp_paths) do
    require("config/lsp/"..getFileName(file))
end
