vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.number = true

vim.opt.wrap = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = {
	-- eol = "↲",
	tab = "» ",
	lead = "⋅",
	trail = "•",
	extends = "❯",
	precedes = "❮",
	nbsp = "␣",
}

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Slower mouse scrolling
vim.opt.mousescroll = "ver:1,hor:4"
