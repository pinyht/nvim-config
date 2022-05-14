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
        run = ':TSUpdate'
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
    -- lsp安装插件,支持一键安装lsp服务器
    use {
        "williamboman/nvim-lsp-installer",
        -- lsp自动配置插件
        "neovim/nvim-lspconfig",
    }
    --加入nvim-cmp插件,支持代码补全
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    -- " For vsnip users.
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    -- For luasnip users.
    -- Plug 'L3MON4D3/LuaSnip'
    -- Plug 'saadparwaiz1/cmp_luasnip'
    -- For ultisnips users.
    -- Plug 'SirVer/ultisnips'
    -- Plug 'quangnguyen30192/cmp-nvim-ultisnips'
    -- For snippy users.
    -- Plug 'dcampos/nvim-snippy'
    -- Plug 'dcampos/cmp-snippy'

end)

