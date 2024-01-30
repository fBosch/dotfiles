return {
	"ibhagwan/fzf-lua",
	dependencies = { "kyazdani42/nvim-web-devicons" },
	cmd = { "FzfLua", "FzfFd", "FzfRg" },
	config = function()
		local fzf = require("fzf-lua")
		fzf.setup({
			winopts = {
				hl = { border = "rounded" },
				default = {
					preview = "bat_native",
				},
			},
			previewers = {
				builtin = {
					hl_cursorline = "IncSearch", -- cursor line highlight
					extensions = {
						["png"] = { "viu", "-t", "-h=33", "-x=10", "-y=3" },
						["jpg"] = { "viu", "-t", "-h=33", "-x=10", "-y=3" },
					},
				},
				bat = {
					cmd = "bat_async",
					args = "--style=numbers,changes --color=always --line-range=:70",
					theme = "Zenwritten Dark",
				},
			},
			files = {
				args = "--style=numbers,changes --color=always --line-range=:70",
			},
			oldfiles = {
				args = "--style=numbers,changes --color=always --line-range=:70",
				cmd = {
					"fd",
					".",
					"--type",
					"file",
					"--threads=4",
					"-E",
					"*.{png,jpg,jpeg,bmp,webp,log}",
					"-H",
					"--strip-cwd-prefix",
				},
			},
			live_grep = {
				previewer = "bat_async",
				args = "--style=numbers,changes --color=always --line-range=:70",
				keep_last = true,
			},
			keymap = {
				builtin = {
					["C-k"] = "preview-page-up",
					["C-j"] = "preview-page-down",
				},
			},
		})

		vim.api.nvim_create_user_command("FzfFd", function()
			fzf.files({
				cmd = "fd --threads=4 --color=always -tf",
			})
		end, {})

		vim.api.nvim_create_user_command("FzfRg", function()
			local colors =
				'--color=ansi --colors="match:bg:magenta" --colors="match:fg:black" --colors="line:fg:yellow" --colors="path:fg:white" '

			local exclude_glob =
				"!{**/node_modules/*,**/.git/*,**/.yarn/*,**/dist/*,**/.pnpm-store/*,**/.backup/*,**/.sessions/*,**/.undo/*,**/.DS_Store}"

			local combined_options = "--with-filename --max-columns=200 --smart-case --vimgrep -g '"
				.. exclude_glob
				.. "' "
				.. colors

			fzf.live_grep_resume({
				rg_glob = true,
				glob_flag = "--iglob",
				exec_empty_query = false,
				rg_opts = combined_options,
			})
		end, {})
	end,
}
