return {
  {
    'folke/zen-mode.nvim',
    opts = {
      wezterm = {
        enabled = true,
        font = '+4',
      },
    },
    keys = {
      { mode = 'n', '<leader>z', ':ZenMode<CR>', desc = 'Toggle [Z]en Mode' },
    },
  },
}
