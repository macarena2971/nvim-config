-- Auto-save on leaving insert mode or changing buffers
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = "*",
  callback = function()
    if vim.bo.modified and vim.fn.expand("%") ~= "" and vim.bo.buftype == "" then
      vim.cmd("silent write")
    end
  end,
})
