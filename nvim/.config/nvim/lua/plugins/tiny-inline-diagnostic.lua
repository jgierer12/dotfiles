return {
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "VeryLazy",
		priority = 1000,
		init = function()
			-- Disable Neovim's default virtual text diagnostics
			vim.diagnostic.config({ virtual_text = false })
		end,
		opts = {
			preset = "powerline",
			options = {
				use_icons_from_diagnostic = true,
				show_all_diags_on_cursorline = true,
			},
		},
	},
}
