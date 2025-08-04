vim.g.mapleader = "ù"

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<leader>d", ":vsp<CR><", opts)
keymap("n", "<leader>e", "<C-w><C-w>", opts)
keymap("n", "<leader>t", ":tabe<CR>", opts)
