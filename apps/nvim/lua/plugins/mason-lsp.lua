require('mason').setup()

require("mason-lspconfig").setup({
		    ensure_installed = { "lua_ls", "rust_analyzer", "ts_ls"}
})
local lspconfig = require('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.clangd.setup({
	cmd = {"clangd"}
})

--lspconfig.lua_ls.setup({
	--cmd = {"lua_ls"}
--}

lspconfig.intelephense.setup({
	cmd = {"intelephense"}
})

