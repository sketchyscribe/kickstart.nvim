return {
  'numToStr/FTerm.nvim',
  config = function()
    require('FTerm').setup {
      border = 'double',
      cmd = 'nu',
    }

    vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
    vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

    local fterm = require 'FTerm'

    local gitui = fterm:new {
      ft = 'fterm_gitui', -- You can also override the default filetype, if you want
      cmd = 'lazygit',
      dimensions = {
        height = 0.9,
        width = 0.9,
      },
    }

    -- Use this to toggle gitui in a floating terminal
    vim.keymap.set('n', '<A-g>', function()
      gitui:toggle()
    end)
    -- Bottom window
    local btop = fterm:new {
      ft = 'fterm_btop',
      cmd = 'bottom',
    }

    -- Use this to toggle btop in a floating terminal
    vim.keymap.set('n', '<A-b>', function()
      btop:toggle()
    end)
  end,
}
