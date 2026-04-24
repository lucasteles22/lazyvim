-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Mostrar trailing spaces e tabs
vim.opt.list = true
vim.opt.listchars = {
  trail = "·",
  tab = "» ",
  nbsp = "␣",
}
vim.opt.number = true
vim.opt.relativenumber = true

-- Desabilitar formatação automática ao salvar
vim.g.autoformat = false
