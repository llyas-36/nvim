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
require("core.indent")

vim.opt.number = true
vim.opt.relativenumber = false

-- tab 

for i = 1, 9 do
  vim.keymap.set("n", "<A-" .. i .. ">", "<cmd>BufferLineGoToBuffer " .. i .. "<CR>", {
    desc = "Go to buffer " .. i,
  })
end


-- tab





-- screen split

vim.keymap.set("n", "<C-b>", function()
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
--
--
--
--


-- disable arrow key 
local opts = { noremap = true, silent = true }

vim.keymap.set("", "<Up>", "<Nop>", opts)
vim.keymap.set("", "<Down>", "<Nop>", opts)
vim.keymap.set("", "<Left>", "<Nop>", opts)
vim.keymap.set("", "<Right>", "<Nop>", opts)



-- disable arrow key  in insert mode 
vim.keymap.set("i", "<Up>", "<Nop>", opts)
vim.keymap.set("i", "<Down>", "<Nop>", opts)
vim.keymap.set("i", "<Left>", "<Nop>", opts)
vim.keymap.set("i", "<Right>", "<Nop>", opts)



-- copy and paste -- 

-- Copy with Ctrl + C in visual mode
vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy to system clipboard" })

-- Paste with Ctrl + V in normal mode
vim.keymap.set("n", "<C-v>", '"+p', { desc = "Paste from system clipboard" })

-- Paste with Ctrl + V in insert mode
vim.keymap.set("i", "<C-v>", '<Esc>"+pa', { desc = "Paste from system clipboard" })

