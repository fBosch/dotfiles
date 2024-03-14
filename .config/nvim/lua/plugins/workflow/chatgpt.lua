return {
	{
		"robitx/gp.nvim",
    cmd = { "GpChatToggle" },
		keys = {
			{
				"<leader>gp",
				"<cmd>GpChatToggle vsplit<cr>",
				desc = "Toggle ChatGPT VSplit",
				silent = true,
			},
		},
		config = function()
			require("gp").setup({
				chat_user_prefix = "󰭹 : ",
				chat_assistant_prefix = { "󰚩 : ", "[{{agent}}]" },
			})
		end,
	},
	{
		"jackmort/chatgpt.nvim",
		dependencies = {
			"muniftanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
		enabled = false,
		cmd = { "ChatGPT", "ChatGPTEditWithInstruction", "ChatGPTRun" },
		keys = {
			{
				"<leader>ac",
				"<cmd>ChatGPT<cr>",
				desc = "ChatGPT",
				silent = true,
			},
			{
				"<leader>ae",
				"<cmd>ChatGPTEditWithInstruction<cr>",
				desc = "Edit with instruction",
				mode = { "n", "v" },
				silent = true,
			},
			{
				"<leader>ag",
				"<cmd>ChatGPTRun grammar_correction<cr>",
				desc = "Grammar Correction",
				mode = { "n", "v" },
				silent = true,
			},
			{
				"<leader>at",
				"<cmd>ChatGPTRun translate<cr>",
				desc = "Translate",
				mode = { "n", "v" },
				silent = true,
			},
			{
				"<leader>ak",
				"<cmd>ChatGPTRun keywords<cr>",
				desc = "Keywords",
				mode = { "n", "v" },
				silent = true,
			},
			{
				"<leader>ad",
				"<cmd>ChatGPTRun docstring<cr>",
				desc = "Docstring",
				mode = { "n", "v" },
				silent = true,
			},
			{
				"<leader>aa",
				"<cmd>ChatGPTRun add_tests<cr>",
				desc = "Add Tests",
				mode = { "n", "v" },
				silent = true,
			},
			{
				"<leader>ao",
				"<cmd>ChatGPTRun optimize_code<cr>",
				desc = "Optimize Code",
				mode = { "n", "v" },
				silent = true,
			},
			{
				"<leader>as",
				"<cmd>ChatGPTRun summarize<cr>",
				desc = "Summarize",
				mode = { "n", "v" },
				silent = true,
			},
			{
				"<leader>af",
				"<cmd>ChatGPTRun fix_bugs<cr>",
				desc = "Fix Bugs",
				mode = { "n", "v" },
				silent = true,
			},
			{
				"<leader>ax",
				"<cmd>ChatGPTRun explain_code<cr>",
				desc = "Explain Code",
				mode = { "n", "v" },
				silent = true,
			},
			{
				"<leader>ar",
				"<cmd>ChatGPTRun roxygen_edit<cr>",
				desc = "Roxygen Edit",
				mode = { "n", "v" },
				silent = true,
			},
			{
				"<leader>al",
				"<cmd>ChatGPTRun code_readability_analysis<cr>",
				desc = "Code Readability Analysis",
				mode = { "n", "v" },
				silent = true,
			},
		},
		opts = {
			openai_params = { model = "gpt-4-1106-preview" },
			openai_edit_params = { model = "gpt-4-1106-preview" },
			chat = {
				max_line_length = 120,
				welcome_message = "",
				sessions_window = {
					active_sign = " 󰭹 ",
					inactive_sign = " 󰻞 ",
				},
				keymaps = {
					select_session = "<cr>",
				},
			},
		},
	},
}
