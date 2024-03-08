return {
  "nvim-neorg/neorg",
  dependencies = { "nvim-lua/plenary.nvim" },
  build = ":Neorg sync-parsers",
  -- tag = "*",
  lazy = true, -- enable lazy load
  ft = "norg", -- lazy load on file type
  cmd = "Neorg", -- lazy load on command
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {}, -- Loads default nds"]"behaviour
        ["core.concealer"] = {}, -- Adds pretty icons teo your documents
        ["core.keybinds"] = {},
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/notes",
            },
            index = "index.norg",
          },
        },
      },
    })
  end,
}
