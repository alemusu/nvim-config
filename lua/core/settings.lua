-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,})

-- indenting
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- line numbers
vim.o.number = true
vim.o.relativenumber = true

vim.o.showmode = true
vim.g.have_nerd_font = true 
vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"

-- configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- preview substitutions live, as I type
vim.o.inccommand = "split"

-- minimal number of screen lines to keep above and below the cursor
vim.o.scrolloff = 10

-- ask confirmation when there's a saving error
vim.o.confirm = true

-- give long term access to undotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- highlights incremental searches with regex
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- fast update time
vim.opt.updatetime = 50


