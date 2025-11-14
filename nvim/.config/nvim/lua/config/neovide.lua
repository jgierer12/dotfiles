vim.opt.guifont = "Maple Mono Normal NF CN:h12"

for _, side in ipairs({ "top", "bottom", "right", "left" }) do
	vim.g["neovide_padding_" .. side] = 6
end

vim.g.neovide_hide_mouse_when_typing = true

vim.g.neovide_floating_shadow = false
