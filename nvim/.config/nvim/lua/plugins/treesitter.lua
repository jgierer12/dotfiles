return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").install({
				-- A list of parser names, or 'all' (the listed parsers MUST always be installed)
				"gleam",
				"astro",
				"typescript",
				"javascript",
				"regex",
				"html",
				"php",
				"sql",
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
			})
		end,
	},
	{
		"gbprod/php-enhanced-treesitter.nvim",
	},
}
