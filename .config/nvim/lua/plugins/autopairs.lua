-- Auto close paired braces

return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {
        map_cr = false
    } -- this is equalent to setup({}) function
}
