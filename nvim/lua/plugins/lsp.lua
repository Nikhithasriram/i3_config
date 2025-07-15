return {
	{
		"mason-org/mason.nvim",
		version = "1.8.3",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		version = "1.31.0",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" , "rust_analyzer" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		version = "1.8.0",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
				filetypes = { "rust" },
				settings = {
					["rust-analyzer"] = {
						cargo = {
							allFeatures = true,
						},
					},
				},
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			-- Code actions (like fix or import)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			-- Show diagnostics in a floating window
			vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {})
			-- Go to next/prev diagnostic
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {})
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {})
		end,
	},
}
