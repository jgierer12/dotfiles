local formatters = {
	lua = { "stylua" },
	rust = { "rustfmt", lsp_format = "fallback" },
}

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

local biome_filetypes = {
	"javascript",
	"javascriptreact",
	"typescript",
	"typescriptreact",
	"svelte",
	"css",
	"html",
	"json",
	"jsonc",
	"graphql",
	"astro",
}

-- Add prettier & prettierd before biome
-- Set stop_after_first so only the first valid formatter is used
-- Together with require_cwd on the prettier formatter, this will use prettier
-- if the project has a prettier config file, and otherwise biome
for _, ft in ipairs(prettier_filetypes) do
	formatters[ft] = { stop_after_first = true, "prettierd", "prettier" }
end
for _, ft in ipairs(biome_filetypes) do
	if not formatters[ft] then
		formatters[ft] = {}
	end
	table.insert(formatters[ft], "biome")
end

return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		opts = {
			formatters = {
				-- Only use prettier/prettierd if project has a prettier config
				prettierd = {
					require_cwd = true,
				},
				prettier = {
					require_cwd = true,
				},
			},
			notify_on_error = false,
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
			formatters_by_ft = formatters,
		},
	},
}
