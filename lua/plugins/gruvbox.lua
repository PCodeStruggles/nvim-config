return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000, -- Ensures the theme loads before other UI components
  config = function()
    require("gruvbox").setup({
      bold = false, -- Disables bold text globally across all highlight groups
    })
    vim.o.background = "dark" -- Set to "light" for light mode
    -- vim.cmd([[colorscheme gruvbox]])
  end,
}
