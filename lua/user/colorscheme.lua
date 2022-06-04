vim.cmd [[
try
  colorscheme catppuccin
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme catppuccin
  set background=dark
endtry
]]
