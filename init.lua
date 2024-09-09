require("config.lazy")

-- force english language
vim.cmd("language en_US")

-- linenumbers
vim.opt.number = true
vim.opt.relativenumber = true

-- tabbing
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- cursor padding
vim.opt.scrolloff = 7

-- buffer switching
vim.keymap.set("n", "<leader>bn", ":bn<Enter>", {})
vim.keymap.set("n", "<leader>bp", ":bp<Enter>", {})

-- drip
vim.cmd.colorscheme "catppuccin"
-- keybinds
    -- vim
    vim.keymap.set("i", "jj", "<Esc>", {})
    vim.keymap.set("t", "jj", "<C-\\><C-n>", {})

    -- telescope
    local builtin = require('telescope.builtin')
    vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})



-- LSP
require("mason").setup()
-- require("mason-lspconfig").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls" , "csharp_ls" },
    }
)

vim.keymap.set("n", "<C-x><C-K>", vim.lsp.tagfunc, {})
vim.keymap.set("n", "<leader>ds", vim.diagnostic.open_float, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

require("lspconfig").lua_ls.setup {}
require("lspconfig").fsautocomplete.setup {}
require("lspconfig").omnisharp.setup {}
require("lspconfig").clangd.setup {}

