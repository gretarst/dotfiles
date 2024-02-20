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
      lspconfig.ocamllsp.setup({})
      lspconfig.gopls.setup({})
      lspconfig.svelte.setup({
        capabilities = capabilities,
      })
      vim.keymap.set("n", "<leader>ch", "<cmd>Lspsaga hover_doc<CR>", { desc = "document hover" })
      vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "definition" })
      vim.keymap.set("n", "<leader>cr", vim.lsp.buf.references, { desc = "reference" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "code actions" })
    end,
  },
}
