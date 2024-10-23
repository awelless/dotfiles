require('telescope').setup {
    defaults = {
        layout_config = {
            horizontal = {
                prompt_position = 'top',
            },
        },
        path_display = { 'smart' },
        sorting_strategy = 'ascending',
    },
    pickers = {
        buffers = {
            sort_lastused = true,
            ignore_current_buffer = true,
        },
    },
    extensions = {
        file_browser = {
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
        },
    },
}

-- Telescope mappings.
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})

-- Telescope file browser.
require('telescope').load_extension 'file_browser'
vim.keymap.set('n', '<leader>fd', ':Telescope file_browser<cr>')
vim.keymap.set('n', '<leader>fc', ':Telescope file_browser path=%:p:h select_buffer=true<cr>')
