vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })


-- comment

local map = vim.keymap.set

-- Toggle comment for current line in normal mode
map('n', '<C-l>', function()
  require('Comment.api').toggle.linewise.current()
end, { desc = 'Toggle comment with Ctrl+l' })

-- Toggle comment for selected lines in visual mode
map('v', '<C-l>', function()
  require('Comment.api').toggle.linewise(vim.fn.visualmode())
end, { desc = 'Toggle comment with Ctrl+l' })
