return {
  {
    "folke/neodev.nvim",
    opts = {
      library = {
        enabled = true,
        runtime = true,
        types = true,
        plugins = true,
      },
      setup_jasonls = true,
      lspconfig = true,
      pathStrict = true,
    },
  },
}
