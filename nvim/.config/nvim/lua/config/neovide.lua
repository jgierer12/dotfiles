vim.opt.guifont = "Maple Mono Normal NF CN:h12"

for _, side in ipairs({ "top", "bottom", "right", "left" }) do
	vim.g["neovide_padding_" .. side] = 6
end
