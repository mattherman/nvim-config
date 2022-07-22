local map = vim.api.nvim_set_keymap

opts = { noremap = true, silent = true }

-- Editing
map('i', 'jj', '<ESC>', opts)
map('i', '{<CR>', '{<CR>}<ESC>O', opts)

-- Telescope
map('n', '<C-f>', '<cmd>Telescope find_files<cr>', opts)
map('n', '<Leader>f', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<Leader>fb', '<cmd>Telescope buffers<cr>', opts)
map('n', '<Leader>fh', '<cmd>Telescope help_tags<cr>', opts)
map('n', '<Leader>gs', '<cmd>Telescope git_status<cr>', opts)
map('n', '<Leader>gc', '<cmd>Telescope git_commits<cr>', opts)
map('n', '<Leader>gb', '<cmd>Telescope git_branches<cr>', opts)

-- LSP
lsp_on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    map('n', 'gD', vim.lsp.buf.declaration, bufopts)
    map('n', 'gd', vim.lsp.buf.definition, bufopts)
    map('n', 'K', vim.lsp.buf.hover, bufopts)
    map('n', 'gi', vim.lsp.buf.implementation, bufopts)
    map('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    map('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    map('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    map('n', 'gr', vim.lsp.buf.references, bufopts)
end
