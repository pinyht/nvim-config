------------------------------
-- lsp_install插件配置
------------------------------
require("nvim-lsp-installer").setup({
    -- 配置安装lsp语言
    ensure_installed = { "jdtls" },
    -- 自动安装
    automatic_installation = true,
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
