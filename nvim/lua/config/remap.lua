vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Closing buffers.
vim.keymap.set('n', '<leader>x', vim.cmd.Ex)

-- Jumping betweem lines.
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')

-- Nohlsearch on escape.
vim.keymap.set('n', '<esc>', '<cmd>nohlsearch<cr>')

