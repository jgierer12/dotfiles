return {
	{
		"rmagatti/auto-session",
		lazy = false,

		config = function()
			vim.opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
			require("auto-session").setup({
				suppressed_dirs = { "~/", "~/Downloads", "/" },
			})
		end,
	},
}
