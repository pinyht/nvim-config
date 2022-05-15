------------------------------
-- auto-session插件配置
------------------------------
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"
require("auto-session").setup({
    log_level = 'info',
    auto_session_suppress_dirs = {'~/'}
})
