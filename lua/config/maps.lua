local map = vim.keymap.set

-- Sauvegarde / Quit
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })

-- Recherche
map("n", "<leader>h", "<cmd>nohlsearch<cr>", { desc = "Clear hlsearch" })

-- nvim-tree
-- map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle file explorer" })

local telescope = require("telescope.builtin")

-- Fuzzy find files
vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Find files" })
-- Live grep
vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "Live grep" })
-- Buffers
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "Find buffers" })
-- Help tags
vim.keymap.set("n", "<leader>fh", telescope.help_tags, { desc = "Find help" })

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

-- Indenter en mode Visuel avec Tab / Shift-Tab
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent selection" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Unindent selection" })

