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
					section_separators = { left = "", right = "" },
				},
				sections = {
					lualine_b = {
						{
							"branch",
							icon = "",
						},
						"diff",
					},
					lualine_c = {
						"diagnostics",
						"%=", -- center
						{
							"filename",
							file_status = true,
							path = 0,
							shorting_target = 40,
							symbols = {
								modified = " ",
								readonly = " ",
								unnamed = "[No Name]",
								newfile = "[New]",
							},
						},
					},
					lualine_x = {
						"encoding",
						{
							"fileformat",
							symbols = {
								unix = " LF",
								dos = " CRLF",
								mac = " CR",
							},
						},
						"filetype",
					},
				},
			})
		end,
	},
}
