local catppuccin = require("catppuccin")

-- configure it
catppuccin.setup({
dim_inactive = {
	enabled = true,
	shade = "dark",
	percentage = 0.15,
},
transparent_background = false,
term_colors = true,
compile = {
	enabled = true,
	path = vim.fn.stdpath "cache" .. "/catppuccin",
	suffix = "_compiled"
},
styles = {
	comments = { "italic" },
	conditionals = { "italic" },
	loops = {},
	functions = {},
	keywords = {},
	strings = {},
	variables = {},
	numbers = {},
	booleans = {},
	properties = {},
	types = {},
	operators = {},
},
integrations = {
	treesitter = true,
	native_lsp = {
		enabled = true,
		virtual_text = {
			errors = { "italic" },
			hints = { "italic" },
			warnings = { "italic" },
			information = { "italic" },
		},
		underlines = {
			errors = { "underline" },
			hints = { "underline" },
			warnings = { "underline" },
			information = { "underline" },
		},
	},
	coc_nvim = false,
	lsp_trouble = true,
	cmp = true,
	lsp_saga = false,
	gitgutter = false,
	gitsigns = true,
	telescope = true,
	nvimtree = {
		enabled = true,
		show_root = true,
		transparent_panel = false,
	},
	neotree = {
		enabled = false,
		show_root = true,
		transparent_panel = false,
	},
	dap = {
		enabled = true,
		enable_ui = true,
	},
	which_key = true,
	indent_blankline = {
		enabled = true,
		colored_indent_levels = true,
	},
	dashboard = true,
	neogit = false,
	vim_sneak = false,
	fern = false,
	barbar = false,
	bufferline = true,
	markdown = true,
	lightspeed = false,
	ts_rainbow = true,
	hop = false,
	notify = true,
	telekasten = true,
	symbols_outline = true,
	mini = false,
}

})

vim.g.catppuccin_flavour = "frappe"


local colorscheme = "catppuccin"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
