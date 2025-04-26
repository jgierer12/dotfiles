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
			snacks_image = {
				relative = "editor",
				col = -1,
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
		bigfile = { enabled = true },
		picker = {
			matcher = {
				frecency = true,
			},
			win = {
				input = {
					keys = {
						["<esc>"] = { "close", mode = { "n", "i" } },
					},
				},
			},
		},
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

		-- Pickers
		{
			"<leader>fp",
			function()
				Snacks.picker.pickers()
			end,
			desc = "[f]ind [p]icker",
		},
		{
			"<leader>ff",
			function()
				Snacks.picker.smart({
					hidden = true,
					ignored = true,
				})
			end,
			desc = "[f]ind [f]iles",
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
			desc = "[f]ind [g]rep",
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
			desc = "[f]ind [g]rep",
		},
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "[f]ind [b]uffers",
		},
		{
			"<leader>fh",
			function()
				Snacks.picker.help()
			end,
			desc = "[f]ind [h]elp",
		},
		{
			"<leader>fk",
			function()
				Snacks.picker.keymaps()
			end,
			desc = "[f]ind [k]eymaps",
		},
		{
			"<leader>fc",
			function()
				Snacks.picker.commands()
			end,
			desc = "[f]ind [c]ommands",
		},
		{
			"<leader>fm",
			function()
				Snacks.picker.git_status()
			end,
			desc = "[f]ind [m]odified files",
		},
		{
			"gd",
			function()
				Snacks.picker.lsp_definitions()
			end,
			desc = "[g]oto [d]efinition",
		},
		{
			"<leader>fd",
			function()
				Snacks.picker.diagnostics()
			end,
			desc = "[f]ind [d]iagnostics",
		},
		{
			"<leader>fr",
			function()
				Snacks.picker.lsp_references()
			end,
			desc = "[f]ind [r]eferences",
		},
		{
			"<leader>fs",
			function()
				Snacks.picker.lsp_symbols()
			end,
			desc = "[f]ind [s]ymbols",
		},
		{
			"<leader>fq",
			function()
				Snacks.picker.qflist()
			end,
			desc = "[f]ind [q]uickfix",
		},
		{
			"<leader>fu",
			function()
				Snacks.picker.undo()
			end,
			desc = "[f]ind [u]ndo",
		},
	},
}
