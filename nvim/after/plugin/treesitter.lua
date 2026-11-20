local ok, ts = pcall(require, 'nvim-treesitter')
if not ok then
    vim.notify('nvim-treesitter not available', vim.log.levels.WARN)
    return
end

-- Install parsers (async; no-op for ones already installed).
ts.install({
    'c',
    'go',
    'groovy',
    'java',
    'kotlin',
    'lua',
    'markdown',
    'markdown_inline',
    'python',
    'sql',
    'vim',
    'vimdoc',
})

-- The plugin no longer enables highlighting itself, so start it per buffer.
-- pcall because it errors for filetypes that have no parser.
vim.api.nvim_create_autocmd('FileType', {
    callback = function(args)
        pcall(vim.treesitter.start, args.buf)
    end,
})

local ctx_ok, context = pcall(require, 'treesitter-context')
if ctx_ok then
    context.setup({
        multiline_threshold = 5,
    })
end

