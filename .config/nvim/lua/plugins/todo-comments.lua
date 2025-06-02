return {
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
		specs = {
			"folke/snacks.nvim",
			keys = {
				{
					"<leader>ft",
					function()
						---@diagnostic disable-next-line: undefined-field
						Snacks.picker.todo_comments()
					end,
					desc = "find todos",
				},
			},
		},
	},
}
