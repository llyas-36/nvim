vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    local ft = vim.bo.filetype
    local cs_map = {
      lua        = "-- %s",
      javascript = "// %s",
      typescript = "// %s",
      python     = "# %s",
      go         = "// %s",
      html       = "<!-- %s -->",
      css        = "/* %s */",
      java       = "// %s",
      cpp        = "// %s",
      c          = "// %s",
    }

    if cs_map[ft] then
      vim.bo.commentstring = cs_map[ft]
    end
  end,
})
