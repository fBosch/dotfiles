return {
	"j-hui/fidget.nvim",
	tag = "legacy",
	event = "VeryLazy",
	config = function()
		require("fidget").setup({
			text = {
				spinner = "dots_scrolling",
				done = "",
			},
			window = {
				zindex = 1000,
				relative = "editor",
				blend = 20,
			},
		})
	end,
}
