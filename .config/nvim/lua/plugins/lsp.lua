return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
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
		},
		config = function()
			local lspconfig = require("lspconfig")
			local servers = {
				lua_ls = {
					settings = {
						Lua = {
							diagnostics = {
								disable = {
									"missing-fields",
								},
							},
						},
					},
				},
				astro = {},
				-- ts_ls = {
				-- 	root_dir = lspconfig.util.root_pattern("package.json"),
				-- 	single_file_support = false,
				-- },
				denols = {
					root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
				},
				rust_analyzer = {},
				marksman = {},
				gleam = {},
				harper_ls = {
					filetypes = { "markdown" },
					settings = {
						["harper-ls"] = {
							userDictPath = vim.fn.expand("~/.config/dictionaries/en.txt"),
							isolateEnglish = true,
							linters = {
								ToDoHypen = false,
								SentenceCapitalization = false,
							},
							markdown = {
								IgnoreLinkTitle = true,
							},
						},
					},
				},
			}
			for server, config in pairs(servers) do
				config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
				lspconfig[server].setup(config)
			end

			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					if not client then
						return
					end

					vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[c]ode [a]ction" })

					-- Change diagnostic symbols in the sign column (gutter)
					local signs = { ERROR = "", WARN = "", INFO = "", HINT = "" }
					local diagnostic_signs = {}
					for type, icon in pairs(signs) do
						diagnostic_signs[vim.diagnostic.severity[type]] = icon
					end
					vim.diagnostic.config({ signs = { text = diagnostic_signs } })
				end,
			})
		end,
	},
	{
		"saecki/live-rename.nvim",
		keys = {
			{
				"<leader>cr",
				function()
					require("live-rename").rename({ insert = true })
				end,
				desc = "[r]ename symbol",
			},
		},
	},
	{
		"pmizio/typescript-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		opts = {},
	},
}
