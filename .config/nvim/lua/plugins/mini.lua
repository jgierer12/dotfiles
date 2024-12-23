return {
	{
		"echasnovski/mini.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		config = function()
			require("mini.basics").setup({
				mappings = { windows = true },
			})

			local gen_spec = require("mini.ai").gen_spec
			require("mini.ai").setup({
				n_lines = 500,
				custom_textobjects = {
					-- Function definition (needs treesitter queries with these captures)
					F = gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }),
				},
			})

			require("mini.surround").setup()

			require("mini.pairs").setup()

			require("mini.bracketed").setup()
		end,
	},
}
