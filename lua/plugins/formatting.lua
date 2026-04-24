return {
  {
    "stevearc/conform.nvim",
    opts = {
      format_on_save = false,
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jdtls = {
          settings = {
            java = {
              format = {
                enabled = false,
              },
            },
          },
        },
      },
    },
  },
}
