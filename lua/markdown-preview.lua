local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<Leader>mp', '<cmd>MarkdownPreview<cr>', opts)
vim.keymap.set('n', '<Leader>ms', '<cmd>MarkdownPreviewStop<cr>', opts)
