local opts = { noremap = true, silent = true }

-- Editing
vim.keymap.set('i', 'jj', '<ESC>', opts)
vim.keymap.set('i', '{<CR>', '{<CR>}<ESC>O', opts)

-- Terminal
function toggle_terminal()
    for i, buffer in ipairs(vim.api.nvim_list_bufs()) do
        local buffer_name = vim.api.nvim_buf_get_name(buffer)
        if (string.sub(buffer_name, 1, 7) == "term://") then
            vim.api.nvim_win_set_buf(0, buffer)
            return
        end
    end
    vim.api.nvim_command(":terminal")
end
vim.keymap.set('n', '<Leader>`', toggle_terminal, opts)
vim.keymap.set('t', '<C-o>', '<C-\\><C-n><C-o>', opts)

