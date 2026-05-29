return {
  "neovim/nvim-lspconfig",
  config = function()

    vim.lsp.config("clangd", {
      cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--header-insertion=never",
      },
    })

    -- Modern API: Explicitly enable clangd
    vim.lsp.enable("clangd")

    -- Global diagnostic keymaps
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, { desc = "Open diagnostic float" })
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Next diagnostic" })

    -- LSP Buffer-local keymaps (fires when the language server attaches)
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
        local opts = { buffer = ev.buf }
        
	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts, { desc = "Go to declaration" })
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts, { desc = "Go to definition" })
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts, { desc = "Hover documentation" })
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts, { desc = "Go to implementation" })
	vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts, { desc = "Rename symbol" })
	vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts, { desc = "Code actions" })
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts, { desc = "Show references" })
      end,
    })
  end,
}
