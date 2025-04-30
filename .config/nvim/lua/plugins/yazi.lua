return {
	{
		"mikavilpas/yazi.nvim",
		event = "VeryLazy",
		keys = {
			{
				"<leader>e",
				"<cmd>Yazi<cr>",
				desc = "Open yazi at the current file",
			},
			{
				"<leader>E",
				"<cmd>Yazi cwd<cr>",
				desc = "Open the file manager in nvim's working directory",
			},
		},
		opts = {
			open_for_directories = true,
			keymaps = {
				show_help = "<f1>",
			},
		},
	},
	{
		"yazi-rs/flavors",
		name = "yazi-rs-flavors",
		lazy = true,
		build = function(spec)
			require("yazi.plugin").build_flavor(spec, {
				sub_dir = "catppuccin-mocha.yazi",
			})
		end,
	},
	{
		"yazi-rs/plugins",
		name = "yazi-rs-plugins",
		lazy = true,
		build = function(spec)
			require("yazi.plugin").build_plugin(spec, {
				sub_dir = "git.yazi",
			})
			require("yazi.plugin").build_plugin(spec, {
				sub_dir = "smart-enter.yazi",
			})
		end,
	},
}
