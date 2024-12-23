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
			},
		},
	},
}
