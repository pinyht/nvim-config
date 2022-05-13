------------------------------
-- packer插件管理加载
------------------------------
vim.cmd('set completeopt=menu,menuone,noselect')
return require('packer').startup(function()
    -- packer插件管理自身
    use 'wbthomason/packer.nvim'
    -- monokai主题插件
    use 'tanvirtin/monokai.nvim'
    -- lsp安装插件
    use {
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
    }
    -- nvim-tree插件,支持文件目录
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        }
    }
    --use 'mfussenegger/nvim-jdtls'
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

