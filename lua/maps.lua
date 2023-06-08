local map = vim.keymap.set

local opts = { noremap = true, silent = true }

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

-- nvim-tree
local tree = require("nvim-tree.api").tree
map('n', '<C-b>', tree.focus, opts)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    map('n', 'gD', vim.lsp.buf.declaration, opts)
    map('n', 'gd', vim.lsp.buf.definition, opts)
    map('n', 'K', vim.lsp.buf.hover, opts)
    map('n', 'gi', vim.lsp.buf.implementation, opts)
    map('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    map('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    map('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    map('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    map('n', '<space>D', vim.lsp.buf.type_definition, opts)
    map('n', '<space>rn', vim.lsp.buf.rename, opts)
    map({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    map('n', 'gr', vim.lsp.buf.references, opts)
    map('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
