vim.keymap.set("n", "<leader>ww", "<cmd>w<cr>", { desc = "[w]rite" })
vim.keymap.set("n", "<leader>wq", "<cmd>wqa<cr>", { desc = "[w]rite and [q]uit all" })
vim.keymap.set("n", "<leader>qq", "<cmd>q<cr>", { desc = "[q]uit" })
vim.keymap.set("n", "<leader>qa", "<cmd>qa<cr>", { desc = "[q]uit [a]ll" })

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
