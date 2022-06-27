
return require("packer").startup({
    function(use)
        use({
            "wbthomason/packer.nvim",
            "tpope/vim-rhubarb",
            "tpope/vim-fugitive",
            "tpope/vim-commentary",
            "tpope/vim-surround",
            "tpope/vim-vinegar",
            "nathom/filetype.nvim",
            "romgrk/barbar.nvim",
            "neovim/nvim-lspconfig",
            "lewis6991/impatient.nvim",
            "lukas-reineke/indent-blankline.nvim",
            "dag/vim-fish",
            "norcalli/nvim-terminal.lua",
            "HerringtonDarkholme/yats.vim",
            "mhinz/vim-sayonara",
            "mg979/vim-visual-multi",
            "simrat39/symbols-outline.nvim",
            "github/copilot.vim",
            {
              "mcauley-penney/tidy.nvim",
              config = function()
                require("tidy").setup()
              end
            },
            {
              "gelguy/wilder.nvim",
              requires = "kyazdani42/nvim-web-devicons",
              config = function()
                local wilder = require('wilder')
                wilder.setup({
                  modes = { ":", "/", "?" },
                })

                wilder.set_option('renderer', wilder.popupmenu_renderer({
                  highlighter = wilder.basic_highlighter(),
                  highlights = {
                    accent = wilder.make_hl('WilderAccent', 'Pmenu', {{a = 1}, {a = 1}, {foreground = '#B279A7'}})
                  },
                  left = {' ', wilder.popupmenu_devicons() },
                  right = {' ', wilder.popupmenu_scrollbar() },
                }))
              end,
            },
            {
              "mcchrish/zenbones.nvim",
              requires = "rktjmp/lush.nvim"
            },
            {
              "lewis6991/gitsigns.nvim",
              config = function()
                require('gitsigns').setup()
              end
            },
            {
              "akinsho/toggleterm.nvim",
              config = function()
                require('toggleterm').setup()
              end
            },
            {
                "nvim-telescope/telescope.nvim",
                requires = {  "nvim-telescope/telescope-file-browser.nvim" },
                config = function()
                    require("telescope").load_extension "file_browser"
                    require("telescope").setup({
                        defaults = {
                            layout_config = {
                                scroll_speed = 1.5,
                                preview_cutoff = 300
                            }
                        },
                        extensions = { file_browser = {
                                theme = "dropdown"
                            },
                        },
                        pickers = {
                            find_files = {
                                prompt_prefix = "🔍",
                                find_command = { "fd", ".", "$(git rev-parse --show-toplevel)", "--type", "file", "--threads=8", "-E", "*.{png,jpg,jpeg,bmp,webp,log}" },
                                previewer = false,
                                theme = "dropdown"
                            },
                            grep_string = {
                                theme = 'dropdown',
                                disable_coordinates = true
                            },
                            live_grep = {
                                theme = "dropdown",
                                disable_coordinates = true
                            },
                            buffers = {
                                theme = "dropdown",
                                only_cwd = true,
                                sort_mru = true
                            }
                        }
                    })
                end
            },
            {
                "nvim-lualine/lualine.nvim",
                requires = { "kyazdani42/nvim-web-devicons", opt = true },
                config = function()
                    require("lualine").setup({
                        options = { theme = "auto" },
                        extensions = { "fugitive", "symbols-outline" }
                    })
                end
            },
            {
                "startup-nvim/startup.nvim",
                requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
                config = function()
                    require("startup").setup({
                        theme = "startup_theme"
                    })

                end
            },
            {
                "ibhagwan/fzf-lua",
                requires = { 'kyazdani42/nvim-web-devicons' },
                config = function()
                  require("fzf-lua").setup({
                    files = {
                      prompt = 'Files '
                    }
                  })
                end
            },
            {
                "windwp/nvim-autopairs",
                event = "InsertEnter",
                config = function()
                  require("nvim-autopairs").setup()
                end
            },
            {
                "kyazdani42/nvim-tree.lua",
                requires = {
                    'kyazdani42/nvim-web-devicons',
                },
                config = function()
                  require('nvim-tree').setup({})
                end
            },
            {
                "jghauser/kitty-runner.nvim",
                config = function()
                    require("kitty-runner").setup()
                end
            },
            {
                "nvim-treesitter/nvim-treesitter",
                run = ":TSUpdate",
                config = function()
                    require("nvim-treesitter.configs").setup({
                        autopairs = { enable = true },
                        autotag = { enable = true },
                        ensure_installed = 'all',
                        highlight = { enable = true },
                        indent = { enable = true }
                    })
                end
            },
            {
                "neoclide/coc.nvim",
                branch = "release",
                config = function()
                    vim.g.coc_global_extensions = {
                        "coc-diagnostic",
                        "coc-css",
                        "coc-eslint",
                        "coc-prettier",
                        "coc-html",
                        "coc-json",
                        "coc-lua",
                        "coc-tsserver",
                        "coc-svelte",
                        "coc-tailwindcss"
                    }
                end
            },
        })
    end
})
