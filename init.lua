local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.cursorline = true

opt.signcolumn = "yes"

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.softtabstop = 4
opt.smartindent = true
opt.breakindent = true
-- opt.autoindent = true

opt.clipboard:append("unnamedplus")
opt.backup = false
opt.fileencoding = "utf-8"

require("config.lazy")
