return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			local gitsigns = require("gitsigns")

			gitsigns.setup({
				current_line_blame = true,
				on_attach = function(bufnr)
					local function map(mode, l, r, opts)
						opts = opts or {}
						opts.buffer = bufnr
						vim.keymap.set(mode, l, r, opts)
					end

					map("n", "[h", function()
						gitsigns.nav_hunk("prev")
					end, { desc = "Git Hunk backward" })
					map("n", "]h", function()
						gitsigns.nav_hunk("next")
					end, { desc = "Git Hunk forward" })

					map("n", "<leader>gs", gitsigns.stage_hunk, { desc = "Stage Hunk" })
					map("v", "<leader>gs", function()
						gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
					end, { desc = "Stage Selection" })
					map("n", "<leader>gS", gitsigns.stage_buffer, { desc = "Stage File" })

					map("n", "<leader>gr", gitsigns.reset_hunk, { desc = "Reset Hunk" })
					map("v", "<leader>gr", function()
						gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
					end, { desc = "Reset Selection" })
					map("n", "<leader>gR", gitsigns.reset_buffer, { desc = "Reset File" })

					map("n", "<leader>gp", gitsigns.preview_hunk, { desc = "Preview Hunk" })

					map("n", "<leader>gb", function()
						gitsigns.blame_line({ full = true })
					end, { desc = "Blame Line" })
					map("n", "<leader>gB", gitsigns.blame, { desc = "Blame" })

					map("n", "<leader>gd", gitsigns.diffthis, { desc = "Diff" })

					map({ "o", "x" }, "ih", gitsigns.select_hunk)
					map({ "o", "x" }, "ah", gitsigns.select_hunk)
				end,
			})
		end,
	},
}
