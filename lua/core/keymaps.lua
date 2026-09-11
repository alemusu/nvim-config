-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find file" })
vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find file in repo" })
vim.keymap.set("n", "<leader>fs", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Search with grep" })

-- format file
vim.keymap.set("n", "=", function()
	vim.lsp.buf.format()
end)

-- quit neovim
vim.keymap.set("n", "qq", "<cmd>q!<CR>")

-- save file
vim.keymap.set("n", "ss", "<cmd>w<CR>")

-- clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- open file explorer
vim.keymap.set("n", "<leader>e", "<cmd>Explore<CR>")

-- terminal
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

-- keymaps to make split navigation easier
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")

-- undo tree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- move selected text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- <leader>p over selected text does not yank the text
vim.keymap.set("x", "<leader>p", '"_dP')

-- <leader>d doesn't yank the deleted text
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')
vim.keymap.set("n", "<leader>x", '"_x')
vim.keymap.set("v", "<leader>x", '"_x')

-- <leader>y yanks to the system clipboard
vim.keymap.set("v", "<leader>y", '"+y')

-- never enter Ex mode
vim.keymap.set("n", "Q", "<nop>")

-- quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace the word i'm on for the whole file
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
