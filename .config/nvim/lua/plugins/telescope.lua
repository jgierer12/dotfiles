return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
			"nvim-telescope/telescope-ui-select.nvim",
			{
				"danielfalk/smart-open.nvim",
				branch = "0.2.x",
				dependencies = {
					"kkharji/sqlite.lua",
				},
			},
		},
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				extensions = {
					fzf = {},
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
					smart_open = {
						match_algorithm = "fzf",
					},
				},
			})
			telescope.load_extension("fzf")
			telescope.load_extension("ui-select")
			telescope.load_extension("smart_open")

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", telescope.extensions.smart_open.smart_open, { desc = "[f]ind [f]iles" })
			vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "[f]ind [r]ecent files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[f]ind by [g]rep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[f]ind [b]uffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[f]ind [h]elp" })
			vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "[f]ind [k]eymaps" })
			vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "[f]ind [c]ommands" })
			vim.keymap.set("n", "<leader>ft", builtin.builtin, { desc = "[f]ind [t]elescopes" })

			local in_config = function(callback)
				return function()
					callback({
						cwd = vim.fn.stdpath("config"),
					})
				end
			end
			vim.keymap.set("n", "<leader>nf", in_config(builtin.find_files), { desc = "[n]eovim [f]ind config files" })
			vim.keymap.set("n", "<leader>ng", in_config(builtin.live_grep), { desc = "[n]eovim [g]rep config files" })
		end,
	},
}
