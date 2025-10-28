
require("toggleterm").setup({
  size = 15,
  direction = "horizontal",
  start_in_insert = true,
})

-- Toggle horizontal terminal with <Ctrl-s>
vim.keymap.set("n", "<C-s>", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Toggle horizontal terminal" })



local Terminal = require("toggleterm.terminal").Terminal

-- Recreate the left terminal every time to ensure size is applied
-- vim.keymap.set("n", "<C-l>", function()
--   local left_term = Terminal:new({
--     direction = "vertical",
--     size = 100,
--     hidden = true,
--   })
--   left_term:toggle()
-- end, { desc = "Toggle left terminal" })



vim.api.nvim_create_user_command("Term", function(opts)
  local size = tonumber(opts.args) or 55
  vim.cmd("ToggleTerm size=" .. size .. " direction=vertical")
end, {
  nargs = "?",
  desc = "Open vertical terminal with custom size",
})
