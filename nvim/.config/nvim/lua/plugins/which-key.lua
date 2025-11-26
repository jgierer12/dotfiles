return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			spec = {
				{ "<leader>f", group = "Find" },
				{ "<leader>c", group = "LSP commands" },
				{ "<leader>w", group = "Write" },
				{ "<leader>q", group = "Quit" },
				{ "<leader>s", group = "Surround" },
				-- { "<leader>h", group = "Harpoon" },
				{ "<leader>m", group = "Markdown" },
				{ "<leader>g", group = "Git" },
				{ "<leader>R", group = "Kulala" },
			},
			preset = "helix",
			delay = 0,
			win = {
				height = {
					max = math.huge,
				},
			},
			icons = {
				rules = false,
				breadcrumb = " ", -- symbol used in the command line area that shows your active key combo
				separator = "󱦰  ", -- symbol used between a key and it's label
				group = "󰹍 ", -- symbol prepended to a group
			},
		},
	},
}
