return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter")
    configs.setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc" },
      auto_install = true,
      highlight = {
        enable = true, 
        additional_vim_regex_highlighting = false,
      },
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "c" },
      callback = function()
        vim.treesitter.start()
      end,
      })
  end,
}
