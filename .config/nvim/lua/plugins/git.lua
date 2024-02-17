return {
	{
		"kdheepak/lazygit.nvim",
		keys = {
			{
				mode = { "n" },
				"<leader>gg",
				"<cmd>LazyGit<cr>",
				desc = "lazygit",
			},
		},
		cmd = {
			"LazyGit",
		},
		config = function()
			local telescope = require("telescope")
			telescope.load_extension("lazygit")
		end,
	},
	{

		"dinhhuy258/git.nvim",
		event = "VeryLazy",
		keys = {
			{
				mode = { "n" },
				"<leader>gbo",
				"<cmd>GitBlameOpenCommitURL<CR>",
				desc = "git blame open commit url",
			},
			{
				mode = { "n" },
				"<leader>gbc",
				"<cmd>GitBlameCopySHA<CR>",
				desc = "git blame copy commit sha",
			},
		},
		config = function()
			require("git").setup()
		end,
	},
	{
		"akinsho/git-conflict.nvim",
		event = { "BufRead" },
		config = function()
			require("git-conflict").setup()
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		event = { "InsertEnter", "BufRead" },
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"sindrets/diffview.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{
				mode = { "n" },
				"<leader>dff",
				"<cmd>DiffviewOpen<cr>",
				desc = "diff view open",
			},
			{
				mode = { "n" },
				"<leader>dfq",
				"<cmd>DiffviewClose<cr>",
				desc = "diff view close",
			},
		},
		cmd = {
			"DiffviewOpen",
			"DiffviewClose",
		},
	},
}
