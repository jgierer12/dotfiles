return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			options = {
				component_separators = "",
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = {
					"mode",
				},
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
						path = 1,
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
					{
						require("recorder").recordingStatus,
					},
					"encoding",
					"filetype",
				},
				lualine_y = {
					"progress",
				},
				lualine_z = {
					"location",
				},
			},
		},
	},
}
