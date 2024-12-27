return {
	"folke/snacks.nvim",
	---@type snacks.Config
	opts = {
		styles = {
			float = {
				border = "rounded",
				backdrop = false,
			},
		},
	},
	keys = {
		{
			"<leader>g",
			function()
				Snacks.lazygit.open()
			end,
			desc = "Open Lazy[G]it",
		},
		{
			"<leader>t",
			function()
				Snacks.scratch({ icon = " ", name = "Todo", ft = "markdown", file = "~/Documents/Notes/TODO.md" })
			end,
			desc = "Open [T]odo List",
		},
	},
}
