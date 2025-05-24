return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {
			map_cr = false,
		},
		keys = {
			-- Add undo breakpoints when pressing enter in insert mode
			{
				"<cr>",
				function()
					local undo_keycode = vim.api.nvim_replace_termcodes("<C-g>u", true, true, true)
					local autopairs_keycode = require("nvim-autopairs").completion_confirm()

					return undo_keycode .. autopairs_keycode
				end,
				mode = "i",
				expr = true,
				replace_keycodes = false,
			},
		},
	},
}
