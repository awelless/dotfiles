-- Line numbers.
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation.
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- Automatically reload a buffer when the underlying file changes on disk,
-- as long as there are no unsaved modifications in the buffer.
-- autoread alone is passive; the autocmd triggers checktime on focus/cursor
-- idle events so Neovim actually notices and applies the reload.
vim.opt.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
    pattern = "*",
    callback = function()
        if vim.fn.mode() ~= "c" then
            vim.cmd("checktime")
        end
    end,
})

-- Search.
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true

