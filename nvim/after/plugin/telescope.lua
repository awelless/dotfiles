require('telescope').setup {
    defaults = {
        layout_config = {
            horizontal = {
                prompt_position = 'top',
            },
        },
        path_display = {'smart'},
        sorting_strategy = 'ascending',
    },
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})

