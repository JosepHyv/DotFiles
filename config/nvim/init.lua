require('monokai').setup {}
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.mouse = 'a'
vim.wo.number = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.title = true
vim.opt.relativenumber = true
vim.opt.cursorline = false
vim.opt.autoindent = true
vim.opt.wrap = true
vim.opt.expandtab = true
vim.opt.tabstop = 4 
vim.opt.shiftwidth = 4
vim.opt.autowrite = true
vim.opt.showcmd = true
vim.opt.shell = 'zsh'
vim.opt.smarttab = true
vim.opt.breakindent = true


return require('packer').startup(function(use)
        use 'tanvirtin/monokai.nvim'

end)


