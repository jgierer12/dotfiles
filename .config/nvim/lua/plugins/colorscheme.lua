return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				integrations = {
					blink_cmp = true,
					snacks = true,
					which_key = true,
				},
			})

			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
