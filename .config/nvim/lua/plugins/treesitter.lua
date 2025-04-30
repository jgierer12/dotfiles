return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				-- A list of parser names, or 'all' (the listed parsers MUST always be installed)
				ensure_installed = {
					"gleam",
					"astro",
					"typescript",
					"javascript",
					"regex",
					"html",
					"php",
					"xml",
					"css",
					"json",
					"jsonc",
					"yaml",
					"toml",
					"bash",
					"fish",
					"rust",
					"lua",
					"markdown",
					"markdown_inline",
					"diff",
					"dockerfile",
				},
				auto_install = false,
				highlight = { enable = true },
			})
		end,
	},
}
