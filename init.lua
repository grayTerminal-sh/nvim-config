-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Options de base
local o = vim.opt

o.number = true
o.relativenumber = true
o.termguicolors = true
o.cursorline = true

o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.smartindent = true

o.ignorecase = true
o.smartcase = true

o.wrap = false
o.scrolloff = 5
o.signcolumn = "yes"

o.clipboard = "unnamedplus"

-- Avant require("config.lazy")
local ts_site = vim.fn.stdpath("data") .. "/site"
if not vim.tbl_contains(vim.opt.rtp:get(), ts_site) then
  vim.opt.rtp:append(ts_site)
end

-- Appel de Lazy
require("config.lazy")

-- Colorscheme
vim.cmd.colorscheme("tokyonight")

-- Keymaps (fichier séparé)
require("config.maps")

-- Undo persistant
local undodir = vim.fn.stdpath("state") .. "/undo"
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end
vim.opt.undodir = undodir
vim.opt.undofile = true

-- Mini
require('mini.map').setup()
