return { 
    'IogaMaster/neocord',
    event = "VeryLazy",
    init = function ()
        require("neocord").setup({
            show_time = false
        })
    end
}
