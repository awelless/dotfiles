local neotest = require('neotest')

neotest.setup{
    adapters = {
        require('neotest4j'),
--        require('neotest-java') {
--            ignore_wrapper = false,
--        },
        require('neotest-python'),
    },
    log_level = vim.log.levels.TRACE,
}

local function set_keymap_n(mapping, action, opts)
    vim.keymap.set('n', mapping, action, opts)
end

set_keymap_n('<leader>t', '', { desc = '+test' })
set_keymap_n('<leader>tt', function() neotest.run.run(vim.fn.expand('%')) end, { desc = 'Run File' })
set_keymap_n('<leader>tT', function() neotest.run.run(vim.uv.cwd()) end, { desc = 'Run All Test Files' })
set_keymap_n('<leader>tr', function() neotest.run.run() end, { desc = 'Run Nearest' })
set_keymap_n('<leader>tl', function() neotest.run.run_last() end, { desc = 'Run Last' })
set_keymap_n('<leader>ts', function() neotest.summary.toggle() end, { desc = 'Toggle Summary' })
set_keymap_n('<leader>to', function() neotest.output.open({ enter = true, auto_close = true }) end, { desc = 'Show Output' })
set_keymap_n('<leader>tO', function() neotest.output_panel.toggle() end, { desc = 'Toggle Output Panel' })
set_keymap_n('<leader>tS', function() neotest.run.stop() end, { desc = 'Stop' })
set_keymap_n('<leader>tw', function() neotest.watch.toggle(vim.fn.expand('%')) end, { desc = 'Toggle Watch' })
