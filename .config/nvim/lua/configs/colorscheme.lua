return function()
  vim.opt.ruler = true
  vim.opt.lazyredraw = true
  vim.opt.background = "dark"
  vim.opt.pumblend = 10
  vim.opt.winblend = 0
  vim.opt.scrolloff = 8
  vim.highlight.create("TreesitterContext", { guibg = "#2c2c2c" })

  -- popup menu highlights (wilder, telescope, etc.)
  vim.highlight.create("NormalFloat", { guibg = "#191919" })
  vim.highlight.create("Pmenu", { guibg = "#191919" })
  vim.highlight.create("Beacon", { guibg = "#bbbbbb", ctermbg = 15 })

  -- cmp highlights
  vim.highlight.create("CmpItemAbbrDeprecated", { guibg=0, guifg="#bbbbbb", gui="strikethrough"})
  vim.highlight.create("CmpItemAbbrMatch", { guibg=0, guifg="#aaaaaa" })
  vim.highlight.create("CmpItemAbbrMatchFuzzy", { guibg=0, guifg="#aaaaaa" })
  vim.highlight.create("CmpItemKindVariable", { guibg=0, guifg="#97bdde" })
  vim.highlight.create("CmpItemKindInterface", { guibg=0, guifg="#97bdde" })
  vim.highlight.create("CmpItemKindText", { guibg=0, guifg="#97bdde" })
  vim.highlight.create("CmpItemKindFunction", { guibg=0, guifg="#b279a7" })
  vim.highlight.create("CmpItemKindMethod", { guibg=0, guifg="#b279a7" })
  vim.highlight.create("CmpItemKindKeyword", { guibg=0, guifg="#bbbbbb" })
  vim.highlight.create("CmpItemKindProperty", { guibg=0, guifg="#ffffff" })
  vim.highlight.create("CmpItemKindUnit", { guibg=0, guifg="#ffffff" })
  vim.highlight.create("CmpItemKindSnippet", { guibg=0, guifg="#D68C67" })

  -- which-key
  vim.highlight.create("WhichKeyFloat", { guibg = "#191919" })
  vim.highlight.create("WhichKey", { guifg = "#97bdde" })
end
