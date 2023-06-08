local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-f>', '<cmd>Telescope find_files<cr>', opts)
vim.keymap.set('n', '<Leader>f', '<cmd>Telescope live_grep<cr>', opts)
vim.keymap.set('n', '<Leader>fb', '<cmd>Telescope buffers<cr>', opts)
vim.keymap.set('n', '<Leader>fh', '<cmd>Telescope help_tags<cr>', opts)
vim.keymap.set('n', '<Leader>gs', '<cmd>Telescope git_status<cr>', opts)
vim.keymap.set('n', '<Leader>gc', '<cmd>Telescope git_commits<cr>', opts)
vim.keymap.set('n', '<Leader>gb', '<cmd>Telescope git_branches<cr>', opts)
