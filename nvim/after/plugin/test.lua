require('neotest').setup({
    adapters = {
        require('neotest-java') {
            ignore_wrapper = false,
        },
    },
})

vim.cmd('NeotestJava setup')
