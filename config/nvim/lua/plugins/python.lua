return {
  -- Disable pylsp
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = true,
      },
    },
  },

  -- Enable pyright
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                diagnosticMode = "off",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
              },
            },
          },
        },
      },
    },
  },
}
