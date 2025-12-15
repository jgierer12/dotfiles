vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.number = true

vim.opt.textwidth = 80

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = {
	tab = "» ",
	trail = "·",
	nbsp = "␣",
}

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Slower mouse scrolling
vim.opt.mousescroll = "ver:1,hor:4"

-- Folds
vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldmethod = "expr"
-- Default to treesitter folding
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- Prefer LSP folding if client supports it
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if client ~= nil and client:supports_method("textDocument/foldingRange") then
			local win = vim.api.nvim_get_current_win()
			vim.wo[win][0].foldexpr = "v:lua.vim.lsp.foldexpr()"
		end
	end,
})
vim.opt.foldtext = ""
vim.opt.foldcolumn = "0"
vim.opt.fillchars:append({ fold = " " })

-- Change diagnostic symbols in the sign column (gutter)
local signs = { ERROR = "", WARN = "", INFO = "", HINT = "" }
local diagnostic_signs = {}
for type, icon in pairs(signs) do
	diagnostic_signs[vim.diagnostic.severity[type]] = icon
end
vim.diagnostic.config({ signs = { text = diagnostic_signs } })

-- Set title and update on cd
vim.opt.title = true
local set_title = function()
	vim.opt.titlestring = "nvim · " .. vim.fs.basename(vim.fn.getcwd())
end
set_title()
vim.api.nvim_create_autocmd("DirChanged", {
	callback = set_title,
})

-- Exit snippet navigation when leaving insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
	callback = function()
		vim.snippet.stop()
	end,
})
