vim.g.mapleader = "ù"

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<leader>d", ":vsp<CR><", opts)
keymap("n", "<leader>e", "<C-w><C-w>", opts)
keymap("n", "<leader>t", ":tabe<CR>", opts)
keymap('n', '<leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
keymap('n', "<leader>a", ":terminal<CR>", opts)

vim.keymap.set('n', '<leader>ff', function()
  require('telescope.builtin').find_files({
    hidden = true,
    no_ignore = true,
  })
end, { desc = "Find files (all)" })

vim.keymap.set('n', '<leader>fg', function()
  require('telescope.builtin').live_grep()
end, { desc = "Recherche dans tous les fichiers (live_grep)" })
