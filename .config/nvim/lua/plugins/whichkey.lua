return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    defaults = {
      ["<leader>o"] = { name = "+org-mode" },
      ["<leader>g"] = { name = "+git" },
      ["<leader>b"] = { name = "+buffer" },
      ["<leader>s"] = { name = "+search" },
      ["<leader>c"] = { name = "+code" },
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.register(opts.defaults)
  end,
}
