-- disable indent guides in filetypes with few indents
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "markdown" },
	callback = function()
		vim.b.snacks_indent = false
	end,
})

return {
	{
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
				snacks_image = {
					relative = "editor",
					col = -1,
				},
				zen = {
					backdrop = {
						transparent = false,
					},
				},
			},
			words = { enabled = true },
			scroll = {
				enabled = false,
				animate = {
					duration = { step = 10, total = 200 },
					easing = "inOutQuad",
				},
			},
			bigfile = { enabled = true },
			image = {
				enabled = true,
				doc = {
					inline = false,
				},
			},
			indent = {
				enabled = true,
				animate = {
					duration = { step = 10, total = 200 },
					easing = "inOutQuad",
				},
			},
			statuscolumn = {
				left = { "mark", "sign", "fold" },
				right = { "git" },
				folds = {
					open = true,
				},
			},
			dashboard = {
				sections = {
					{ section = "header" },
					{ icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
					{ icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
				},
			},
		},
		keys = {
			{
				"<leader>g",
				function()
					Snacks.lazygit.open()
				end,
				desc = "Open Lazygit",
			},
			{
				"<leader>t",
				function()
					Snacks.scratch({ icon = " ", name = "Todo", ft = "markdown", file = "~/Documents/Notes/TODO.md" })
				end,
				desc = "Open Todo List",
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
				desc = "Zen Mode",
			},

			--#region Pickers
			{
				"<leader>fp",
				function()
					Snacks.picker.pickers({
						layout = "select",
					})
				end,
				desc = "find picker",
			},
			{
				"<leader>ff",
				function()
					Snacks.picker.files({
						matcher = {
							frecency = true,
							cwd_bonus = true,
							sort_empty = true,
						},
						hidden = true,
						ignored = true,
					})
				end,
				desc = "find files",
			},
			{
				mode = "n",
				"<leader>fg",
				function()
					Snacks.picker.grep({
						hidden = true,
						ignored = true,
					})
				end,
				desc = "find grep",
			},
			{
				mode = "x",
				"<leader>fg",
				function()
					Snacks.picker.grep_word({
						hidden = true,
						ignored = true,
					})
				end,
				desc = "find grep",
			},
			{
				"<leader>fb",
				function()
					Snacks.picker.buffers({
						on_show = function()
							-- start in normal mode
							vim.cmd.stopinsert()
						end,
						matcher = {
							sort_empty = true,
						},
						sort_lastused = true,
						win = {
							input = {
								keys = {
									["d"] = "bufdelete",
								},
							},
							list = {
								keys = {
									["d"] = "bufdelete",
								},
							},
						},
					})
				end,
				desc = "find buffers",
			},
			{
				"<leader>fj",
				function()
					Snacks.picker.jumps({
						on_show = function()
							-- start in normal mode
							vim.cmd.stopinsert()
						end,
					})
				end,
				desc = "find jumps",
			},
			{
				"<leader>fh",
				function()
					Snacks.picker.help()
				end,
				desc = "find help",
			},
			{
				"<leader>fk",
				function()
					Snacks.picker.keymaps({
						layout = "select",
					})
				end,
				desc = "find keymaps",
			},
			{
				"<leader>fc",
				function()
					Snacks.picker.commands({
						layout = "select",
					})
				end,
				desc = "find commands",
			},
			{
				"<leader>fm",
				function()
					Snacks.picker.git_status()
				end,
				desc = "find modified files",
			},
			{
				"gd",
				function()
					Snacks.picker.lsp_definitions()
				end,
				desc = "goto definition",
			},
			{
				"<leader>fd",
				function()
					Snacks.picker.diagnostics_buffer({
						layout = "ivy_split",
					})
				end,
				desc = "find diagnostics (buffer)",
			},
			{
				"<leader>fD",
				function()
					Snacks.picker.diagnostics({
						layout = "ivy_split",
					})
				end,
				desc = "find diagnostics (workspace)",
			},
			{
				"<leader>fr",
				function()
					Snacks.picker.lsp_references()
				end,
				desc = "find references",
			},
			{
				"<leader>fs",
				function()
					Snacks.picker.lsp_symbols()
				end,
				desc = "find symbols (buffer)",
			},
			{
				"<leader>fS",
				function()
					Snacks.picker.lsp_workspace_symbols()
				end,
				desc = "find symbols (workspace)",
			},
			{
				"<leader>fq",
				function()
					Snacks.picker.qflist()
				end,
				desc = "find quickfix",
			},
			{
				"<leader>fu",
				function()
					Snacks.picker.undo({
						on_show = function()
							-- start in normal mode
							vim.cmd.stopinsert()
						end,
					})
				end,
				desc = "find undo",
			},
			--#endregion
		},
	},
}
