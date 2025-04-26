return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
		version = "*",
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {
			completions = {
				lsp = { enabled = true },
			},
			code = {
				border = "thick",
				left_pad = 2,
			},
		},
	},
}
