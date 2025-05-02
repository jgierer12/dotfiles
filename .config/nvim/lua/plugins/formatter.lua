local prettier_filetypes = {
	"javascript",
	"javascriptreact",
	"typescript",
	"typescriptreact",
	"svelte",
	"css",
	"html",
	"handlebars",
	"json",
	"jsonc",
	"yaml",
	"markdown",
	"graphql",
	"astro",
}

local formatters = {
	lua = { "stylua" },
	rust = { "rustfmt", lsp_format = "fallback" },
}

for _, ft in ipairs(prettier_filetypes) do
	formatters[ft] = { "prettierd", "prettier", stop_after_first = true }
end

return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		opts = {
			notify_on_error = false,
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
			formatters_by_ft = formatters,
		},
	},
}
