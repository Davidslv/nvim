-- Toggleterm

vim.keymap.set(
  "n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>",
  {noremap = true, silent = true}
)
