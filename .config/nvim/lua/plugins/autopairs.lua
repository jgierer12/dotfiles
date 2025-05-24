return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {
			map_cr = false,
		},
		keys = {
			-- Add undo breakpoints when pressing enter in insert mode
			{
				"<cr>",
				function()
					return "<c-g>u" .. require("nvim-autopairs").completion_confirm()
				end,
				mode = "i",
				expr = true,
			},
		},
	},
}
