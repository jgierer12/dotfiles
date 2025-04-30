return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				dim_inactive = {
					enabled = true,
					percentage = 0.1,
				},
				integrations = {
					blink_cmp = true,
					snacks = true,
					which_key = true,
					noice = true,
				},
			})

			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
