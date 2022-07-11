local catppuccin = require("catppuccin")

-- configure it
catppuccin.setup()

vim.g.catppuccin_flavour = "latte"

local colorscheme = "catppuccin"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
