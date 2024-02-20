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

-- Navigate vim panes better
vim.keymap.set("n", "<leader>wk", ":wincmd k<CR>", { desc = "window move up" })
vim.keymap.set("n", "<leader>wj", ":wincmd j<CR>", { desc = "window move down" })
vim.keymap.set("n", "<leader>wh", ":wincmd h<CR>", { desc = "window move left" })
vim.keymap.set("n", "<leader>wl", ":wincmd l<CR>", { desc = "window move right" })

vim.keymap.set("n", "<leader>bh", "<cmd>BufferLineCyclePrev<cr>", { desc = "previous buffer" })
vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineCyclePrev<cr>", { desc = "next buffer" })

vim.keymap.set("n", "<leader>sf", ":w<CR>", { desc = "file" })
vim.keymap.set("n", "<leader>sa", ":wa<CR>", { desc = "all open files" })
vim.keymap.set("n", "<leader>sq", ":wqa<CR>", { desc = "save all open files and quit" })

-- Copy to clipboard
vim.api.nvim_set_option("clipboard", "unnamed")
vim.keymap.set("n", "<leader>y", '"+y', { desc = "copy to os clipboard" })
