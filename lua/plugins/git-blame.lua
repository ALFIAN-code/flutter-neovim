return {
  "f-person/git-blame.nvim",
  config = function()
    vim.g.gitblame_enabled = 1
    vim.g.gitblame_date_format = "%r" -- contoh: "3 days ago"
  end,
}
