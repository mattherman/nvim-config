local u = require('utils')

local o = vim.o
local wo = vim.wo
local bo = vim.bo

local homeDir = vim.env.HOME
local tmpDir = homeDir .. '/tmp//'

o.backup = true
o.backupdir = tmpDir
o.undofile = true
o.undodir= tmpDir
o.directory = tmpDir
o.compatible = false
o.hidden = true

wo.number = true
wo.relativenumber = true

vim.cmd [[
    set tabstop=8
    set softtabstop=4
    set expandtab
    set shiftwidth=4
    set smarttab
]]
--bo.tabstop = 8
--bo.softtabstop = 4
--bo.expandtab = true
--bo.shiftwidth = 4
--o.smarttab = true

u.create_augroup({
    { 'FileType', 'text', 'setlocal', 'textwidth=78' }
}, 'vimrcEx')
