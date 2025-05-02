return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			spec = {
				{ "<leader>f", group = "[f]ind" },
				{ "<leader>c", group = "[c]ode (LSP commands)" },
				{ "<leader>w", group = "[w]rite" },
				{ "<leader>q", group = "[q]uit" },
				{ "<leader>n", group = "[n]eovim config" },
				{ "<leader>s", group = "[s]urround" },
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
