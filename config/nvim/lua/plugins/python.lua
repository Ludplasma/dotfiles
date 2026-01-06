return {
  -- Disable pylsp
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = false,
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "uv",
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
