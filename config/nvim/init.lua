require('plugins')
require('monokai').setup {}
require('Comment').setup()
local opt = vim.opt
vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
opt.mouse = 'a'
opt.number = true
opt.autoindent = true
opt.tabstop = 4
opt.wrap = true
opt.expandtab = true
opt.showcmd = true
opt.smarttab = true
opt.ignorecase = true
opt.smartcase = true
opt.title = true
opt.relativenumber = true
opt.cursorline = false
opt.wrap = true
opt.shell = 'zsh'
opt.expandtab = true
opt.shiftwidth = 4
opt.autowrite = true
opt.breakindent = true
-- vim.cmd [[colorscheme vim]]

