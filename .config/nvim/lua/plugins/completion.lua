return {
	{
		"saghen/blink.cmp",
		dependencies = {
			"moyiz/blink-emoji.nvim",
			{
				"Kaiser-Yang/blink-cmp-dictionary",
				dependencies = { "nvim-lua/plenary.nvim" },
			},
		},
		version = "*",
		opts = {
			keymap = {
				preset = "default",
				["<c-y>"] = {
					function(cmp)
						-- fix for broken `create_undo_point`
						-- see https://github.com/Saghen/blink.cmp/issues/852
						-- and https://github.com/Saghen/blink.cmp/commit/4c63b4e29738268950911bb0c70ffaaba26b53d7
						if cmp.snippet_active() then
							return cmp.accept()
						else
							vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-g>u", true, true, true), "n", true)
							return cmp.select_and_accept()
						end
					end,
					"fallback",
				},
			},
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
							dictionary_files = {
								vim.fn.expand("~/.config/dictionaries/en.txt"),
							},
						},
					},
				},
			},
		},
	},
}
