-- Gestion of plugins
--

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	--
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	--
	use {
		'kyazdani42/nvim-tree.lua',
		requires = { 'kyazdani42/nvim-web-devicons' }
	}
	--
	use 'jiangmiao/auto-pairs'
	--
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
--
	use { "catppuccin/nvim", as = "catppuccin" }
--
	use({ "miikanissi/modus-themes.nvim" })
--
	use 'crispybaccoon/aurora'
--
	use 'rust-lang/rust.vim'
--
	use 'dense-analysis/ale'
--
end)
