return {
	{
		"waiting-for-dev/ergoterm.nvim",
		config = function()
			local ergoterm = require("ergoterm")
			ergoterm.setup({
				terminal_defaults = {
					float_opts = {
						border = "rounded",
					},
				},
			})

			local lazygit = ergoterm:new({
				name = "lazygit",
				cmd = "lazygit",
				layout = "float",
				sticky = true,
			})

			vim.keymap.set("n", "<leader>gg", function()
				lazygit:focus()
			end, { desc = "Focus Lazygit Terminal" })

			local yazi = ergoterm:new({
				name = "yazi",
				cmd = "yazi",
				layout = "below",
				sticky = true,
			})

			vim.keymap.set("n", "<leader>e", function()
				yazi:focus("below")
			end, { desc = "Focus Yazi Below" })

			vim.keymap.set("n", "<leader>E", function()
				yazi:focus("float")
			end, { desc = "Focus Yazi Floating" })
		end,
	},
}
