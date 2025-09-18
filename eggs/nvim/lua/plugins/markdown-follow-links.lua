return {
  'jghauser/follow-md-links.nvim',
  ft = "markdown",
  config = function ()
      vim.keymap.set('n', '<bs>', ':edit #<cr>', { silent = true })
  end
};
