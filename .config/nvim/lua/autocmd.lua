local cmd = vim.api.nvim_create_autocmd
local group = vim.api.nvim_create_augroup("autocommands", {})

cmd({ "VimLeavePre" }, {
  callback = function()
    for _, win in ipairs(vim.api.nvim_list_wins()) do
      local config = vim.api.nvim_win_get_config(win)
      if config.relative ~= "" then
        vim.api.nvim_win_close(win, false)
      end
    end
    vim.cmd("NvimTreeClose | UndotreeHide | DiffviewClose | TroubleClose")
  end,
  group = group,
})
cmd({ "BufRead", "BufNewFile" }, {
  pattern = { ".{eslint,babel,stylelint,prettier}rc" },
  command = "setlocal ft=json5",
  group = group
})
cmd({ "FileType" }, {
  pattern = { "markdown", "gitcommit" },
  command = "setlocal spell spelllang=en_us",
  group = group
})
cmd({ "TextYankPost" }, {
  command = "lua vim.highlight.on_yank({ higroup = 'IncSearch', timeout = 500 })",
  group = group
})
