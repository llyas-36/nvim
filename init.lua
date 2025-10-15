-- init.lua
require("core.options")
require("core.keymaps")
require("core.plugins")
require("core.colorscheme")
require("core.nvimtree")
require("core.lsp")
require("core.cmp")
require("core.terminal")
require("core.statusline")
require("core.bufferline")


-- tab 

for i = 1, 9 do
  vim.keymap.set("n", "<A-" .. i .. ">", "<cmd>BufferLineGoToBuffer " .. i .. "<CR>", {
    desc = "Go to buffer " .. i,
  })
end


-- tab





-- screen split

vim.keymap.set("n", "<C-v>", function()
  local wins = vim.api.nvim_list_wins()
  if #wins > 1 then
    vim.cmd("close")
  else
    vim.cmd("vsplit")
  end
end, { desc = "Toggle vertical split" })



-- screen split


-- search file

vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>", { desc = "Find files with Telescope" })


-- search file

-- duplicate current line
vim.keymap.set("n", "<C-d>", "yyp", { desc = "Duplicate current line" })

-- duplicate current line