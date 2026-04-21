-- Remover trailing spaces ao salvar
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local save = vim.fn.winsaveview()
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.winrestview(save)
  end,
})

-- Adicionar linha vazia ao final do arquivo ao salvar
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local lines = vim.api.nvim_buf_get_lines(0, -2, -1, false)
    if lines[1] ~= "" then
      vim.api.nvim_buf_set_lines(0, -1, -1, false, { "" })
    end
  end,
})
