return {
    'chomosuke/typst-preview.nvim',
    ft = "typst", -- or ft = 'typst'
    version = '1.*',
    opts = {
        invert_colors = "always",
    }, -- lazy.nvim will implicitly calls `setup {}`
}
