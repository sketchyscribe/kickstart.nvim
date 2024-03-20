return {
  { 'ellisonleao/glow.nvim', config = true, cmd = 'Glow' },
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  -- {
  --   'jghauser/follow-md-links.nvim',
  --   config = function()
  --     vim.keymap.set('n', '<BS>', ':edit #<cr>')
  --   end,
  -- },
  {
    'JoseConseco/telescope_sessions_picker.nvim',
    config = function()
      require('telescope').setup {
        extensions = {
          sessions_picker = {
            sessions_dir = 'C:/Users/kaime/nvim-sessions/',
          },
        },
      }

      require('telescope').load_extension 'sessions_picker'
    end,
  },
  {
    'jakewvincent/mkdnflow.nvim',
    config = function()
      require('mkdnflow').setup {
        -- Config goes here; leave blank for defaults
        perspective = {
          root_tell = true,
        },
      }
    end,
  },
}
