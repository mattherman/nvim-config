local tree = require('nvim-tree')

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

tree.setup({
    sort_by = "case_sensitive",
    update_focused_file = {
        enable = true
    },
    view = {
        width = 30
    },
    renderer = {
        icons = {
            show = {
                file = false,
                folder = false,
                git = false
            },
            glyphs = {
                default = "test",
                folder = {
                    arrow_closed = "▸",
                    arrow_open = "▾"
                }
            }
        }
    },
    on_attach = function(bufnr)
        local api = require "nvim-tree.api"

        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        -- custom mappings
        vim.keymap.set('n', '<C-b>', api.tree.toggle, opts('Toggle'))
        vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
    end
})
