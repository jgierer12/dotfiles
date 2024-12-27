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
	},
}
