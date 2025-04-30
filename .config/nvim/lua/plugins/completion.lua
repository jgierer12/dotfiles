return {
	{
		"saghen/blink.cmp",
		dependencies = {
			"rafamadriz/friendly-snippets",
			{
				"L3MON4D3/LuaSnip",
				version = "v2.*",
				config = function()
					require("luasnip.loaders.from_vscode").lazy_load()
					require("luasnip").filetype_extend("astro", { "typescript", "html" })
				end,
			},
			"moyiz/blink-emoji.nvim",
			{
				"Kaiser-Yang/blink-cmp-dictionary",
				dependencies = { "nvim-lua/plenary.nvim" },
			},
		},
		version = "*",
		opts = {
			keymap = { preset = "default" },
			signature = { enabled = true },
			completion = {
				documentation = {
					auto_show = true,
				},
			},
			snippets = {
				preset = "luasnip",
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer", "emoji", "dictionary" },
				providers = {
					buffer = {
						module = "blink.cmp.sources.buffer",
						name = "Buffer",
						max_items = 3,
					},
					emoji = {
						module = "blink-emoji",
						name = "Emoji",
						score_offset = 20,
						opts = {
							insert = true,
						},
					},
					dictionary = {
						module = "blink-cmp-dictionary",
						name = "Dict",
						score_offset = -10,
						max_items = 8,
						min_keyword_length = 3,
						opts = {
							dictionary_directories = {
								vim.fn.expand("~/.config/dictionaries"),
							},
						},
					},
				},
			},
		},
	},
}
