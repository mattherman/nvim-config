local u = require('utils')

u.create_augroup({
    { 'VimEnter', '*', 'colorscheme', 'gruvbox' }
}, 'colorScheme')

vim.o.background = 'dark'
