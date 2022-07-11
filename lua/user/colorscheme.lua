local catppuccin = require("catppuccin")

-- configure it
catppuccin.setup({
  term_colors = true,
  integrations = {
    treesitter = true;
    native_lsp = {
		  enabled = true,
		  virtual_text = {
			  errors = "italic",
			  hints = "italic",
			  warnings = "italic",
			  information = "italic",
		  },
		  underlines = {
			  errors = "underline",
			  hints = "underline",
			  warnings = "underline",
			  information = "underline",
		},
      lsp_trouble = true,
      cmp = true;
      lsp_saga = true;
      gitsigns = true;
      gitgutter = true;
      nvimtree = {
		    enabled = true,
		    show_root = false,
		    transparent_panel = false,
	    },
      which_key = true,
      indent_blankline = {
		    enabled = true,
		    colored_indent_levels = false,
	    },

	},
  },
})

vim.g.catppuccin_flavour = "latte"

local colorscheme = "catppuccin"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
