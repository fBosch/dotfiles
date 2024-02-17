return {
	"zbirenbaum/copilot.lua",
	dependencies = {
		"stevearc/conform.nvim",
	},
	cmd = "Copilot",
	event = "InsertEnter",
	opts = {
		filetypes = {
			lua = true,
			javascript = true,
			javascriptreact = true,
			typescript = true,
			typescriptreact = true,
			rust = true,
			["*"] = false,
		},
		suggestion = {
			auto_trigger = true,
			debounce = 50,
			keymap = {
				accept = "<Tab>",
				next = "<C-j>",
				prev = "<C-k>",
				dismiss = "<C-\\>",
			},
		},
	},
}
