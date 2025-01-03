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
					"html",
					"xml",
					"css",
					"json",
					"yaml",
					"toml",
					"bash",
					"fish",
					"rust",
					"lua",
					"markdown",
					"markdown_inline",
					"diff",
				},
				auto_install = false,
				highlight = { enable = true },
				incremental_selection = {
					enable = true,
				},
			})
		end,
	},
}
