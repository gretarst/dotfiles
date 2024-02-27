return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
      lspconfig.ocamllsp.setup({
        capabilities = capabilities,
      })
      lspconfig.gopls.setup({})
      lspconfig.svelte.setup({
        capabilities = capabilities,
      })
    end,
  },
}
