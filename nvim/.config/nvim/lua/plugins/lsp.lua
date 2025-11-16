return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"b0o/SchemaStore.nvim",
		},
		config = function()
			vim.lsp.enable("ts_ls")

			vim.lsp.config("jsonls", {
				settings = {
					json = {
						schemas = require("schemastore").json.schemas(),
						validate = { enable = true },
					},
				},
			})
			vim.lsp.enable("jsonls")

			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = {
							disable = {
								"missing-fields",
							},
						},
					},
				},
			})
			vim.lsp.enable("lua_ls")

			vim.lsp.enable("astro")

			vim.lsp.enable("html")

			vim.lsp.enable("cssls")

			-- vim.lsp.enable('intelephense')

			vim.lsp.config("emmet_language_server", {
				filetypes = {
					"astro",
					"html",
					"php",
					"css",
					"javascriptreact",
					"typescriptreact",
				},
			})
			vim.lsp.enable("emmet_language_server")

			vim.lsp.enable("rust_analyzer")

			vim.lsp.enable("zls")

			vim.lsp.enable("marksman")

			vim.lsp.enable("tinymist")

			vim.lsp.enable("gleam")

			-- harper_ls = {
			-- 	filetypes = { "markdown" },
			-- 	settings = {
			-- 		["harper-ls"] = {
			-- 			userDictPath = vim.fn.expand("~/.config/dictionaries/en.txt"),
			-- 			isolateEnglish = true,
			-- 			linters = {
			-- 				ToDoHypen = false,
			-- 				SentenceCapitalization = false,
			-- 			},
			-- 			markdown = {
			-- 				IgnoreLinkTitle = true,
			-- 			},
			-- 		},
			-- 	},
			-- },
		end,
	},
	{
		"folke/lazydev.nvim",
		ft = "lua", -- only load on lua files
		opts = {
			library = {
				-- See the configuration section for more details
				-- Load luvit types when the `vim.uv` word is found
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				{ path = "snacks.nvim", words = { "Snacks" } },
			},
		},
	},
	{
		"saecki/live-rename.nvim",
		keys = {
			{
				"<leader>cr",
				function()
					require("live-rename").rename({ insert = true })
				end,
				desc = "Rename Symbol",
			},
		},
	},
	-- {
	-- 	"pmizio/typescript-tools.nvim",
	-- 	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	-- 	opts = {},
	-- },
}
