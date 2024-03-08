return {
  {
    "folke/zen-mode.nvim",
    opts = {
      wezterm = {
        enabled = true,
        font = "+4",
      },
    },
    keys = {
      { mode = "n", "<leader>uz", ":ZenMode<CR>", desc = "Toggle [Z]en Mode" }
    }
  }
}
