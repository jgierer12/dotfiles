vim.keymap.set("n", "<leader>ww", "<cmd>w<cr>", { desc = "[w]rite" })
vim.keymap.set("n", "<leader>wq", "<cmd>wq<cr>", { desc = "[w]rite and [q]uit" })
vim.keymap.set("n", "<leader>qq", "<cmd>q<cr>", { desc = "[q]uit" })
vim.keymap.set("n", "<leader>qa", "<cmd>qa<cr>", { desc = "[q]uit [a]ll" })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

vim.keymap.set("n", "gb", "<c-t>", { desc = "[g]o [b]ack" })
