-- Core settings

vim.opt.autoindent = true
vim.opt.background = 'dark'
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.laststatus = 2
vim.opt.list = true
vim.opt.listchars = 'eol:❮,tab:❯\\'
vim.opt.mouse = ''
vim.opt.number = true
vim.opt.shiftwidth = 2
vim.opt.signcolumn = 'yes'
vim.opt.smartcase = true
vim.opt.statusline = '%t,%c'
vim.opt.syntax = 'on'
vim.opt.tabstop = 4
vim.opt.termguicolors = true

-- autocmd FileType make set noexpandtab 
-- autocmd FileType go set noexpandtab 
-- autocmd BufWritePre * :%s/\s\+$//e
