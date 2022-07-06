local catppuccin = require("catppuccin")

-- configure it
catppuccin.setup()

vim.g.catppuccin_flavour = "frappe"
vim.cmd [[
try
  colorscheme catppuccin
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme catppuccin
  set background=dark
endtry
]]
