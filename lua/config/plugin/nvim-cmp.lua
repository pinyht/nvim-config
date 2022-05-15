------------------------------
-- nvim-cmp插件配置
------------------------------

local lspkind = require("lspkind")
local cmp = require'cmp'

cmp.setup({
    snippet = {
        -- 指定补全引擎
        expand = function(args)
            -- 使用 vsnip 引擎
            vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        end,
    },
    window = {
        -- 开启补全边框
        completion = cmp.config.window.bordered(),
        -- 开启文档边框
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    -- 指定补全源（安装了补全源插件就在这里指定）
    sources = cmp.config.sources({
         {name = "vsnip"},
        {name = "nvim_lsp"},
        {name = "path"},
        {name = "buffer"},
        {name = "cmdline"},
        {name = "spell"},
    }, {
            { name = 'buffer' },
        }),
    -- 格式化补全菜单
    formatting = {
        format = lspkind.cmp_format(
            {
                with_text = true,
                maxwidth = 50,
                before = function(entry, vim_item)
                    vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
                    return vim_item
                end
            }
        )
    },
    -- 对补全建议排序
    sorting = {
        comparators = {
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.score,
            cmp.config.compare.recently_used,
            require("cmp-under-comparator").under,
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order
        }
    },
    -- 绑定补全相关的按键
    mapping = {
        -- 上一个
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        -- 下一个
        ["<C-n>"] = cmp.mapping.select_next_item(),
        -- 选择补全
        ["<CR>"] = cmp.mapping.confirm(),
        --  出现或关闭补全
        ["<C-k>"] = cmp.mapping(
            {
                i = function()
                    if cmp.visible() then
                        cmp.abort()
                    else
                        cmp.complete()
                    end
                end,
                c = function()
                    if cmp.visible() then
                        cmp.close()
                    else
                        cmp.complete()
                    end
                end
            }
        ),
        -- 类似于 IDEA 的功能，如果没进入选择框，tab
        -- 会选择下一个，如果进入了选择框，tab 会确认当前选择
        ["<Tab>"] = cmp.mapping(
            function(fallback)
                if cmp.visible() then
                    local entry = cmp.get_selected_entry()
                    if not entry then
                        print("ccc")
                        cmp.select_next_item({behavior = cmp.SelectBehavior.Select})
                    end
                    cmp.confirm()
                else
                    fallback()
                end
            end,
            {"i", "s", "c"}
        )
    }
})

