return {
  "lewis6991/satellite.nvim",
  event = "VeryLazy",
  config = function()
    require("satellite").setup({
      current_only = false,
      winblend = 50,
      width = 4,
      zindex = 50,
      handlers = {
        search = {
          enable = true
        },
        diagnostics = {
          enable = true
        },
        marks = {
          enable = true
        }
      }
    })
  end
}

