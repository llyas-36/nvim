local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- UI and appearance

-- Completion engine
{
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",      -- LSP source
    "hrsh7th/cmp-buffer",        -- Buffer source
    "hrsh7th/cmp-path",          -- File path source
    "hrsh7th/cmp-cmdline",       -- Command line source
    "L3MON4D3/LuaSnip",          -- Snippet engine
    "saadparwaiz1/cmp_luasnip",  -- Snippet source
  },
},


{
  "williamboman/mason-lspconfig.nvim",
  config = true,
},

  "neovim/nvim-lspconfig",             -- LSP

  {
    "williamboman/mason.nvim",         -- 📦 LSP/formatter/linter installer
    build = ":MasonUpdate",
    config = true,
  },

  {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = true,
}, 

{
  "wakatime/vim-wakatime",
  lazy = false,
}, 


{
  "akinsho/toggleterm.nvim",
  version = "*",
  config = true,
}, 

{
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = true,
}, 

{
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
}, 
-- comments 
{
  "numToStr/Comment.nvim",
  config = true,
}, 
{
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {},
},


  "folke/tokyonight.nvim",            -- 🌙 Color scheme
  "nvim-lualine/lualine.nvim",        -- Status line
  "nvim-tree/nvim-tree.lua",          -- File explorer
  "nvim-treesitter/nvim-treesitter",  -- Syntax highlighting
  "nvim-telescope/telescope.nvim",    -- Fuzzy finder
})
