------------------------------
-- packer插件管理加载
------------------------------
vim.cmd('set completeopt=menu,menuone,noselect')
return require('packer').startup(function()
    -- packer插件管理自身
    use 'wbthomason/packer.nvim'
    -- monokai主题插件
    use 'tanvirtin/monokai.nvim'
    -- 加入中文文档
    use 'yianwillis/vimcdoc'
    -- 加入nvim-treesitter插件,增强代码高亮
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        requires = {
            "p00f/nvim-ts-rainbow" -- 彩虹括号
        },
    }
    -- nvim-tree插件,支持文件目录
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
    }
    -- bufferline插件,支持tab标签
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    --lualine插件,美化状态栏
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- toggleterm插件,支持悬浮终端
    use {"akinsho/toggleterm.nvim", tag = 'v1.*'}
    -- nvim-lasplace插件,支持定位到上一次编辑过的位置
    use 'ethanholz/nvim-lastplace'
    -- which-key插件,查看自定义键位提示等
    use 'folke/which-key.nvim'
    -- auto-session插件,支持保存上次的会话状态,如打开的窗口等
    use 'rmagatti/auto-session'
    -- Comment插件,支持一键注释
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    -- telescope插件,支持全局搜索
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- lsp安装插件,支持一键安装lsp服务器
    use {
        "williamboman/nvim-lsp-installer",
        -- lsp自动配置插件
        "neovim/nvim-lspconfig",
    }
    --加入nvim-cmp插件,支持代码补全
    use {
        "hrsh7th/nvim-cmp",  -- 代码补全核心插件，下面都是增强补全的体验插件
        requires = {
            {"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
            {"hrsh7th/vim-vsnip"}, -- vsnip 引擎，用于获得代码片段支持
            {"hrsh7th/cmp-vsnip"}, -- 适用于 vsnip 的代码片段源
            {"hrsh7th/cmp-nvim-lsp"}, -- 替换内置 omnifunc，获得更多补全
            {"hrsh7th/cmp-path"}, -- 路径补全
            {"hrsh7th/cmp-buffer"}, -- 缓冲区补全
            {"hrsh7th/cmp-cmdline"}, -- 命令补全
            {"f3fora/cmp-spell"}, -- 拼写建议
            {"rafamadriz/friendly-snippets"}, -- 提供多种语言的代码片段
            {"lukas-reineke/cmp-under-comparator"}, -- 让补全结果的排序更加智能
        },
    }
    -- -- 代码调试基础插件
    -- use {
    --     "mfussenegger/nvim-dap",
    -- }
    --
    -- -- 为代码调试提供内联文本
    -- use {
    --     "theHamsta/nvim-dap-virtual-text",
    --     requires = {
    --         "mfussenegger/nvim-dap"
    --     },
    -- }
    --
    -- -- 为代码调试提供 UI 界面
    -- use {
    --     "rcarriga/nvim-dap-ui",
    --     requires = {
    --         "mfussenegger/nvim-dap"
    --     },
    -- }

end)

