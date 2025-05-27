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
				right_pad = 4,
				language_name = false,
				position = "right",
				width = "block",
			},
		},
	},
	{
		"magnusriga/markdown-tools.nvim",
		dependencies = {
			"folke/snacks.nvim", -- Picker
			{
				"iamcco/markdown-preview.nvim",
				cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
				build = "cd app && npm install",
				init = function()
					vim.g.mkdp_filetypes = { "markdown" }
				end,
				ft = { "markdown" },
			},
		},
		opts = {
			template_dir = vim.fn.expand("~/Documents/Notes/Templates"),
			picker = "snacks",
		},
		keys = {
			{ "<leader>mnt" },
		},
		ft = "markdown",
	},
	{
		"HakonHarnes/img-clip.nvim",
		event = "VeryLazy",
		opts = {
			-- add options here
			-- or leave it empty to use the default settings
		},
		keys = {
			-- suggested keymap
			{ "<leader>mp", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
		},
	},
}
