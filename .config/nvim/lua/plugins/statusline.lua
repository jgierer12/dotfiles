return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("lualine").setup({
				options = {
					component_separators = "",
					section_separators = "",
				},
				sections = {
					lualine_b = {
						{
							"branch",
							icon = "",
						},
						"diff",
						"diagnostics",
					},
					lualine_c = {
						{
							"filename",
							path = 1,
						},
					},
				},
			})
		end,
	},
}
