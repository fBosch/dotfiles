return {
	"romgrk/barbar.nvim",
	dependencies = { "kyazdani42/nvim-web-devicons" },
	priority = 100,
	event = { "BufRead", "LspAttach" },
	cmd = { "BufferNext", "BufferPrevious", "BufferClose", "BufferPick" },
	config = function()
		require("bufferline").setup({
			animation = false,
			auto_hide = true,
			maximum_padding = 6,
			icons = {
				pinned = {
					button = "",
				},
				diagnostics = {
					[vim.diagnostic.severity.ERROR] = { enabled = true, icon = "", custom_color = true },
					[vim.diagnostic.severity.WARN] = { enabled = true, icon = "", custom_color = true },
					[vim.diagnostic.severity.INFO] = { enabled = true, icon = "󰋼", custom_color = true },
					[vim.diagnostic.severity.HINT] = { enabled = true, icon = "󰌵", custom_color = true },
					gitsigns = {
						added = { enabled = true, icon = "+" },
						changed = { enabled = true, icon = "~" },
						deleted = { enabled = true, icon = "-" },
					},
				},
			},
		})

		vim.api.nvim_set_hl(0, "BufferCurrent", { fg = "#97bdde" })
		-- diagnostics
		vim.api.nvim_set_hl(0, "BufferDefaultVisibleHINT", { fg = "#b279a7" })
		vim.api.nvim_set_hl(0, "BufferDefaultCurrentHINT", { fg = "#b279a7" })
		vim.api.nvim_set_hl(0, "BufferDefaultInactiveHINT", { fg = "#b279a7", bg = "#303030" })
		vim.api.nvim_set_hl(0, "BufferDefaultVisibleERROR", { fg = "#DE6E7C" })
		vim.api.nvim_set_hl(0, "BufferDefaultCurrentERROR", { fg = "#DE6E7C" })
		vim.api.nvim_set_hl(0, "BufferDefaultInactiveERROR", { fg = "#DE6E7C", bg = "#303030" })
		vim.api.nvim_set_hl(0, "BufferDefaultVisibleWARN", { fg = "#D68C67" })
		vim.api.nvim_set_hl(0, "BufferDefaultCurrentWARN", { fg = "#D68C67" })
		vim.api.nvim_set_hl(0, "BufferDefaultInactiveWARN", { fg = "#D68C67", bg = "#303030" })
		vim.api.nvim_set_hl(0, "BufferDefaultVisibleINFO", { fg = "#97bdde" })
		vim.api.nvim_set_hl(0, "BufferDefaultCurrentINFO", { fg = "#97bdde" })
		vim.api.nvim_set_hl(0, "BufferDefaultInactiveINFO", { fg = "#97bdde", bg = "#303030" })
	end,
}
