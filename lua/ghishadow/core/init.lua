local fn = vim.fn

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


vim.g.mapleader = ' '
vim.g.maplocalleader = ' '



-- Install your plugins here
require('lazy').setup('ghishadow.core.plugins')
require "ghishadow.core.options"
require "ghishadow.core.keymaps"
require "ghishadow.core.lspicon"
require "ghishadow.core.cmp"
require "ghishadow.core.lsp.init"
require "ghishadow.core.dap"
require "ghishadow.core.telescope"
require "ghishadow.core.treesitter"
require "ghishadow.core.illuminate"
require "ghishadow.core.autopairs"
require "ghishadow.core.comment"
require "ghishadow.core.gitsigns"
require "ghishadow.core.nvim-tree"
require "ghishadow.core.lualine"
require "ghishadow.core.bufferline"
require "ghishadow.core.toggleterm"
require "ghishadow.core.project"
require "ghishadow.core.impatient"
require "ghishadow.core.indentline"
require "ghishadow.core.alpha"
require "ghishadow.core.whichkey"
require "ghishadow.core.autocommands"