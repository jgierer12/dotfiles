return {
	"folke/snacks.nvim",
	lazy = false,
	---@type snacks.Config
	opts = {
		styles = {
			float = {
				border = "rounded",
				backdrop = false,
			},
		},
	},
	config = function()
		Snacks.words.enable()
	end,
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
		{
			"\\|",
			function()
				if Snacks.indent.enabled then
					Snacks.indent.disable()
				else
					Snacks.indent.enable()
				end
			end,
			desc = "Toggle indent guides",
		},
	},
}
