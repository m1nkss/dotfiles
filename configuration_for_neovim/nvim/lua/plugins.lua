local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
    { "nvim-tree/nvim-web-devicons" },
    { "nvim-lualine/lualine.nvim" },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "c", "lua", "python", "bash", "javascript", "html", "css", "go" },  -- Ajoute 'c' ici
                highlight = {
                    enable = true,  -- Active la coloration syntaxique Treesitter
                    additional_vim_regex_highlighting = false,  -- Désactive la coloration classique
                },
                indent = {
                    enable = true,  -- Active l'indentation automatique
                },
                -- Plugin pour les parenthèses imbriquées
                rainbow = {
                    enable = true,
                    extended_mode = true,  -- Active les couleurs sur les parenthèses imbriquées
                    max_file_lines = nil,  -- Pas de limite de ligne
                }
            })
        end,
    },
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({
                check_ts = true,  -- Active l'intégration avec Treesitter
                map_cr = true,  -- Permet d'utiliser <CR> pour compléter les parenthèses
            })
        end,
    },
    {
        "Diogo-ss/42-header.nvim",
        cmd = { "Stdheader" },
        keys = { "<F1>" },
        opts = {
            default_map = true, -- Default mapping <F1> in normal mode.
            auto_update = true, -- Update header when saving.
            user = "mameerbe", -- Your user.
            mail = "mameerbe@student.s19.be", -- Your mail.
            -- add other options.
        },
        config = function(_, opts)
            require("42header").setup(opts)
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("nvim-tree").setup({})
        end,
    },

})
