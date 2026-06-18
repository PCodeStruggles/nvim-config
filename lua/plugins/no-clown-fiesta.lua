return {
  "aktersnurra/no-clown-fiesta.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("no-clown-fiesta").setup({
      transparent = false,
      styles = {
        -- Force absolute flatness across the board
        comments = { italic = false },
        keywords = { bold = false },
        functions = { bold = false },
        variables = {},
        type = { bold = false },
        lsp = { underline = false },
      },
    })
    -- vim.cmd([[colorscheme no-clown-fiesta]])
  end
}
