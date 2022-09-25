local ok, null_ls = pcall(require, "null-ls")
if not ok then
	return
end

null_ls.setup({
	sources = {
		-- null_ls.builtins.diagnostics.eslint.with({
		-- 	diagnostics_format = "[eslint] #{m}\n(#{c})",
		-- }),
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.diagnostics.zsh,
	},
})

-- null_ls.setup({
-- 	on_attach = function(client)
-- 		if client.server_capabilities.documentFormattingProvider then
-- 			vim.api.nvim_command([[augroup format]])
-- 			vim.api.nvim_command([[autocmd! * <buffer>]])
-- 			vim.api.nvim_command([[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]])
-- 			vim.api.nvim_command([[augroup end]])
-- 		end
-- 	end,
-- 	sources = {
-- 		null_ls.builtins.formatting.stylua,
-- 		null_ls.builtins.formatting.prettierd,
-- 		-- null_ls.builtins.completion.spell,
-- 	},
-- })
