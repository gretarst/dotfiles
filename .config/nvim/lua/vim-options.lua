vim.g.mapleader = " "
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.shell = "zsh"
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.signcolumn = "yes:1"
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.clipboard = "unnamed,unnamedplus"
vim.opt.termguicolors = true
vim.opt.confirm = true
vim.opt.mouse = "a"

-- buffer 
vim.keymap.set("n", "<leader>bh", "<cmd>BufferLineCyclePrev<cr>", { desc = "previous buffer" })
vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineCyclePrev<cr>", { desc = "next buffer" })
vim.keymap.set("n", "<leader>bk", "<cmd>:BufDel<cr>", { desc = "close buffer" })
vim.keymap.set("n", "<leader>ba", "<cmd>:enew<cr>", { desc = "new buffer" })

-- code actions
vim.keymap.set("n", "<leader>ch", "<cmd>Lspsaga hover_doc<CR>", { desc = "document hover" })
vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "definition" })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.references, { desc = "reference" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "code actions" })

-- git
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<cr>", { desc = "git blame" })
vim.keymap.set("n", "<leader>gl", ":LazyGit<cr>", { desc = "lazygit" })

-- telescope
vim.keymap.set("n", "<leader>?", function()
  require("telescope.builtin").oldfiles()
end, { desc = "find recently opened files" })

vim.keymap.set("n", "<leader>sb", function()
  require("telescope.builtin").buffers()
end, { desc = "search open buffers" })

vim.keymap.set("n", "<leader>sf", function()
  require("telescope.builtin").find_files()
end, { desc = "search files" })

vim.keymap.set("n", "<leader>sg", function()
  require("telescope.builtin").git_files()
end, { desc = "search git files" })

vim.keymap.set("n", "<leader>/", function()
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    previewer = false,
  }))
end, { desc = "fuzzily search in current buffer" })

-- save and quit using the leader key
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "save file" })
vim.keymap.set("n", "<leader>z", "<cmd>wq<CR>", { desc = "save and quit" })

-- copy and paste to and from clipboard
vim.keymap.set("n", "<leader>y", '"+y', { desc = "copy to os clipboard" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "paste from os clipboard" })

-- press U for redo
vim.keymap.set("n", "U", "<C-r>", { desc = "redo" })

-- stolen from dillon mulroy, search and replace all words under the cursor
vim.keymap.set("n", "S", function()
  local cmd = ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>"
  local keys = vim.api.nvim_replace_termcodes(cmd, true, false, true)
  vim.api.nvim_feedkeys(keys, "n", false)
end, {})
