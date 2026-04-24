return {
  { "ellisonleao/gruvbox.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "Mofiqul/dracula.nvim" },
  { "shaunsingh/nord.nvim" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true,
      integrations = {
        snacks = {
          enabled = true,
          indent_scope_color = "",
        },
      },
      custom_highlights = function(colors)
        return {
          NeoTreeNormal = { bg = "NONE" },
          NeoTreeNormalNC = { bg = "NONE" },
          NormalFloat = { bg = "NONE" },
          FloatBorder = { bg = "NONE" },
        }
      end,
    },
  },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      transparent = true,
      theme = "wave",
      overrides = function(colors)
        return {
          -- floats
          NormalFloat = { bg = "NONE" },
          FloatBorder = { bg = "NONE" },
          -- neotree
          NeoTreeNormal = { bg = "NONE" },
          NeoTreeNormalNC = { bg = "NONE" },
          -- snacks explorer
          SnacksExplorer = { bg = "NONE" },
          SnacksExplorerNormal = { bg = "NONE" },
          SnacksExplorerNormalNC = { bg = "NONE" },
          SnacksPicker = { bg = "NONE" },
          SnacksPickerNormal = { bg = "NONE" },
          -- winbar
          WinBar = { bg = "NONE" },
          WinBarNC = { bg = "NONE" },
          -- sign column e number column
          SignColumn = { bg = "NONE" },
          LineNr = { bg = "NONE" },
          LineNrAbove = { bg = "NONE" },
          LineNrBelow = { bg = "NONE" },
          CursorLineNr = { bg = "NONE" },
          FoldColumn = { bg = "NONE" },
          -- normal
          Normal = { bg = "NONE" },
          NormalNC = { bg = "NONE" },
        }
      end,
    },
  },
}
