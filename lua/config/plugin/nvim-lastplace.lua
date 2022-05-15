------------------------------
-- nvim-lastplace插件配置
------------------------------
require'nvim-lastplace'.setup{
    -- 排除记录位置的buffer类型
    lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
    -- 排除记录位置的文件类型
    lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
    -- 自动打开编辑位置的折叠状态
    lastplace_open_folds = true
}
