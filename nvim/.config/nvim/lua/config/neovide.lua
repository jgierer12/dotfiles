vim.opt.guifont = "Maple Mono Normal NF:h12"

for _, side in ipairs({ "top", "bottom", "right", "left" }) do
	vim.g["neovide_padding_" .. side] = 6
end

vim.g.neovide_hide_mouse_when_typing = true

vim.g.neovide_floating_shadow = false

-- Copy/Paste
vim.keymap.set("v", "<SC-C>", '"+y', { noremap = true, silent = true })
vim.keymap.set({ "n", "v", "s", "x", "o", "i", "l", "c", "t" }, "<SC-V>", function()
	vim.api.nvim_paste(vim.fn.getreg("+"), true, -1)
end, { noremap = true, silent = true })

-- Zoom in/out
vim.g.neovide_scale_factor = 1.0
local change_scale_factor = function(delta)
	vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
vim.keymap.set("n", "<C-=>", function()
	change_scale_factor(1.1)
end)
vim.keymap.set("n", "<C-->", function()
	change_scale_factor(1 / 1.1)
end)
vim.keymap.set("n", "<C-0>", function()
	vim.g.neovide_scale_factor = 1.0
end)
