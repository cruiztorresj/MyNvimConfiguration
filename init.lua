local opt = vim.opt

opt.number = true
opt.cursorline = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.softtabstop = 4
opt.autoindent = true

opt.clipboard:append("unnamedplus")

require("config.lazy")
