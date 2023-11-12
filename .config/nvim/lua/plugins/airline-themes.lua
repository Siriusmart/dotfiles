return {
    "vim-airline/vim-airline-themes",
    event = "VeryLazy",
    config = function()
        vim.cmd("AirlineTheme bubblegum")
    end
}
