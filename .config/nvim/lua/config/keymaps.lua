vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Write" })
vim.keymap.set("n", "<leader>qq", "<cmd>q<cr>", { desc = "Quit window" })
vim.keymap.set("n", "<leader>q!", "<cmd>qa!<cr>", { desc = "Force quit all windows" })
vim.keymap.set("n", "<leader>qa", "<cmd>wqa<cr>", { desc = "Write and quit all windows" })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

vim.keymap.set("n", "gb", "<c-t>", { desc = "[g]o [b]ack" })

vim.keymap.set("n", "<leader><leader>", "<c-6>", { desc = "Edit previous file" })

-- Easier to reach start/end of line
vim.keymap.set({ "n", "o", "v" }, "H", "^")
vim.keymap.set({ "n", "o", "v" }, "L", "$")

-- Re-select after indenting in visual mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Some of these require a terminal with Kitty Keyboard Protocol
vim.keymap.set("i", "<c-cr>", "<esc>o", { desc = "Insert newline" })
vim.keymap.set("i", "<c-bs>", "<c-w>", { desc = "Delete word before cursor" })
vim.keymap.set("i", "<c-del>", "<c-o>dw", { desc = "Delete word after cursor" })

-- Folds
vim.keymap.set("n", "z1", "zM", { desc = "Fold to level 1" })
for i = 2, 9 do
	vim.keymap.set("n", "z" .. i, "zM" .. i - 1 .. "zr", { desc = "Fold to level " .. i })
end

-- Add undo breakpoints when pressing enter in insert mode
-- Moved to plugins/autopairs.lua
-- vim.keymap.set("i", "<cr>", "<c-g>u<cr>")
