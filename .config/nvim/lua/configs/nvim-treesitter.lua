return function()
  require("nvim-treesitter.configs").setup({
    autopairs = { enable = true },
    autotag = { enable = true },
    ensure_installed = "all",
    highlight = { enable = true },
    indent = { enable = true }
  })
end
