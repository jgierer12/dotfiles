local function select_keymap(num)
	return {
		"<c-" .. num .. ">",
		function()
			require("harpoon"):list():select(num)
		end,
		desc = "Harpoon Select " .. num,
	}
end

return {
	{
		"ThePrimeagen/harpoon",
		enabled = false,
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("harpoon"):setup()
		end,
		keys = {
			{
				"<leader>ha",
				function()
					require("harpoon"):list():add()
				end,
				desc = "Add file to Harpoon",
			},
			{
				"<leader>hs",
				function()
					require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
				end,
				desc = "Show Harpoon",
			},
			{
				"[h",
				function()
					require("harpoon"):list():prev()
				end,
				desc = "Harpoon Previous",
			},
			{
				"]h",
				function()
					require("harpoon"):list():next()
				end,
				desc = "Harpoon Next",
			},
			select_keymap(1),
			select_keymap(2),
			select_keymap(3),
			select_keymap(4),
		},
	},
}
