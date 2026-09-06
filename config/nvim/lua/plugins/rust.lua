return {
  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Ensure it matches your compatibility layer
    lazy = false,
    opts = {
      server = {
        default_settings = {
          -- rust-analyzer language server configuration
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = true, -- Load all cargo features
              loadOutDirsFromCheck = true,
            },
            -- Enable clippy diagnostics on save
            checkOnSave = {
              command = "clippy",
            },
            procMacro = {
              enable = true,
            },
          },
        },
      },
    },
  },
}
