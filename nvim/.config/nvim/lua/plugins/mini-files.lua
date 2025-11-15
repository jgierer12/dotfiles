return {
	{
		"nvim-mini/mini.files",
		version = "*",
		enabled = false,
		opts = {
			options = {
				permanent_delete = false,
			},
			windows = {
				preview = true,
				width_focus = 30,
				width_preview = 80,
			},
			mappings = {
				synchronize = "<cr>",
			},
		},
		keys = {
			{
				-- Open the directory of the file currently being edited
				-- If the file doesn't exist because you maybe switched to a new git branch
				-- open the current working directory
				"<leader>e",
				function()
					local buf_name = vim.api.nvim_buf_get_name(0)
					local dir_name = vim.fn.fnamemodify(buf_name, ":p:h")
					if vim.fn.filereadable(buf_name) == 1 then
						-- Pass the full file path to highlight the file
						require("mini.files").open(buf_name)
					elseif vim.fn.isdirectory(dir_name) == 1 then
						-- If the directory exists but the file doesn't, open the directory
						require("mini.files").open(dir_name)
					else
						-- If neither exists, fallback to the current working directory
						require("mini.files").open(vim.uv.cwd())
					end
					-- Reveal current working directory
					vim.cmd.normal("@")
				end,
				desc = "Open mini.files (current file)",
			},
			{
				-- Open the current working directory
				"<leader>E",
				function()
					require("mini.files").open(vim.uv.cwd())
				end,
				desc = "Open mini.files (cwd)",
			},
		},
	},
}
