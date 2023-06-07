return {
  "TaDaa/vimade",
  config = function()
    vim.g.vimade = {
      fadelevel = 0.6,
      usecursorhold = true,
      updatetime = 0,
      detecttermcolors = true,
      enablescroll = 1,
      enabletreesitter = 1,
      basegroups = {
        "Folded",
        "Search",
        "SignColumn",
        -- "LineNr",
        -- "CursorLine",
        -- "CursorLineNr",
        "DiffAdd",
        "DiffChange",
        "DiffDelete",
        "DiffText",
        "FoldColumn",
        "Whitespace",
      },
    }
  end,
}
