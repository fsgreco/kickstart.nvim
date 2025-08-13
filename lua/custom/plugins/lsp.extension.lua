
return {
	-- DEPRECATED, now assimilated inside modules.lsp.lua
	{
		enabled = false,
		'fsgreco/custom-lsp-extension', -- this is a "fake" plugin, only this lua table to extend neovim/nvim-lspconfig
		dir = vim.fn.stdpath("config") .. "/lua/custom/plugins/", -- Point to local directory
		dependencies = {
			'neovim/nvim-lspconfig',
		},
		config = function()
			local servers = {
				pyright = {},
				ts_ls = {
					root_dir = require("lspconfig").util.root_pattern({ "package.json", "tsconfig.json", "jsconfig.json" }),
					single_file_support = false,
					-- settings = {},
					root_markers = { "package.json" },
					workspace_required = true,
				},
				denols = {
					root_dir = require('lspconfig').util.root_pattern({ "deno.json", "deno.jsonc" }),
					single_file_support = false,
					-- settings = {}
					root_markers = { "deno.json", "deno.jsonc" },
					workspace_required = true,
				},
				html = {},
				cssls = {},
				eslint = {},
				gopls = {},
				astro = {},
			}

			require('mason-tool-installer').setup { ensure_installed = vim.tbl_keys(servers or {}) }

			for server_name, server_config in pairs(servers) do
				require('lspconfig')[server_name].setup(server_config)
			end
		end
	}
}
