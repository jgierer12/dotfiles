return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
		opts = {
			presets = {
				bottom_search = true,
			},
			messages = {
				view = "mini",
			},
			notify = {
				view = "mini",
			},
			lsp = {
				message = {
					view = "mini",
				},
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
				},
			},
			views = {
				cmdline_popup = {
					position = {
						row = "25%",
						col = "50%",
					},
				},
				mini = {
					position = {
						row = "95%",
						col = "100%",
					},
				},
			},
		},
	},
}
