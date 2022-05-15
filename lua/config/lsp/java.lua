------------------------------
-- java lsp配置
------------------------------
require'lspconfig'.jdtls.setup{ 
    -- 加载附加配置
    on_attach = lsp_on_attach,
    -- 增强补全
    capabilities = lsp_capabilities,
    -- 设置主目录为当前打开目录,支持java多模块项目
    root_dir = function()
        return vim.fn.getcwd()
    end,
    root_files = {
        -- Single-module projects
        {
            'build.xml', -- Ant
            'pom.xml', -- Maven
            'settings.gradle', -- Gradle
            'settings.gradle.kts', -- Gradle
        },
        -- Multi-module projects
        { 'build.gradle', 'build.gradle.kts' },
    }

}
