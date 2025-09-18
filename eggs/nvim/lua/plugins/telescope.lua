return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-fzf-native.nvim'
    },
    event = "VeryLazy",
    config = function ()
        vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = 'NONE' })
        vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = 'NONE' })
        vim.api.nvim_set_hl(0, 'TelescopePromptTitle', { bg = 'NONE' })
        vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { bg = 'NONE' })
        vim.api.nvim_set_hl(0, 'TelescopeResultsTitle', { bg = 'NONE' })
        vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { bg = 'NONE' })
        vim.api.nvim_set_hl(0, 'TelescopePreviewTitle', { bg = 'NONE' })

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

        local actions = require("telescope.actions")

        require('telescope').setup({
            defaults = {
                -- Default configuration for telescope goes here:
                -- config_key = value,
                mappings = {
                    i = {
                        -- map actions.which_key to <C-h> (default: <C-/>)
                        -- actions.which_key shows the mappings for your picker,
                        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                        ["<C-i>"] = actions.move_selection_previous,
                        ["<C-e>"] = actions.move_selection_next
                    }
                }
            }
        })
        end
    }
