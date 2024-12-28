return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		styles = {
			lazygit = {
				border = "rounded",
				backdrop = false,
			},
		},
		words = { enabled = true },
		scroll = {
			enabled = true,
			animate = {
				duration = { step = 10, total = 200 },
				easing = "inOutQuad",
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
		{
			"<leader>z",
			function()
				Snacks.zen.zen()
			end,
			desc = "[z]en mode",
		},
	},
}
