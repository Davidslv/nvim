-- Toggleterm

vim.keymap.set(
  "n", "<leader>lg", "<cmd>lua _lazygit_toggle()<CR>",
  {noremap = true, silent = true}
)
