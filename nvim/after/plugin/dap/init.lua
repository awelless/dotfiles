local dap = require('dap')

-- Keymaps.
vim.keymap.set('n', '<leader>dj', dap.continue)
vim.keymap.set('n', '<leader>dk', dap.step_over)
vim.keymap.set('n', '<leader>dl', dap.step_into)
vim.keymap.set('n', '<leader>dh', dap.step_out)

vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint)

vim.keymap.set('n', '<leader>dr', dap.repl.open)

