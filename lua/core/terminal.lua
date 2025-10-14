require("toggleterm").setup({
  size = 15,
  direction = "horizontal",
  start_in_insert = true,
})

-- Optional keybinding to toggle terminal with <Ctrl-t>
vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Toggle horizontal terminal" })
