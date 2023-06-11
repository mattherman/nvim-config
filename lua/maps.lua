local opts = { noremap = true, silent = true }

-- Editing
vim.keymap.set('i', 'jj', '<ESC>', opts)
vim.keymap.set('i', '{<CR>', '{<CR>}<ESC>O', opts)

-- Terminal
vim.keymap.set('n', '<Leader>`', '<cmd>:terminal<CR>', opts)

