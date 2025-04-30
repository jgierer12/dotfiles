return {
	{
		"echasnovski/mini.pairs",
		version = "*",
		event = "VeryLazy",
		opts = {
			modes = {
				insert = true,
				command = true,
				terminal = false,
			},
			mappings = {
				-- don't add more backticks after the first pair
				-- makes markdown codeblocks ``` easier to type
				["`"] = { neigh_pattern = "[^\\`]." },
			},
		},
	},
}
