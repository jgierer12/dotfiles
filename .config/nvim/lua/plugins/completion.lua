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
		},
		version = "*",
		opts = {
			keymap = { preset = "default" },
			signature = { enabled = true },
			snippets = {
				preset = "luasnip",
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
		},
	},
}
