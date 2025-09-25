vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 0
vim.o.number = true
vim.o.scrolloff = 0
vim.o.colorcolumn = "80"
vim.o.showtabline=2
vim.cmd.colorscheme "wildcharm"
vim.o.background="light"
vim.keymap.set("i", "jj", "<Esc>", {})
vim.keymap.set("t", "jj", "<C-\\><C-n>", {})
vim.cmd([[
    hi statusline guibg=NONE
    hi statuslineNC guibg=NONE
    set shortmess+=I
]])

vim.pack.add({
    { src = "https://github.com/lervag/vimtex"},
    { src = "https://github.com/BeneCollyridam/futhark-vim"},
    { src = "https://github.com/neovim/nvim-lspconfig"},
    { src = "https://github.com/nvim-treesitter/nvim-treesitter",
      version = "main" },
})

vim.filetype.add({
    extension = {
        fut = "futhark"
    }
})

vim.g.vimtex_view_method = "zathura"

require("nvim-treesitter").setup({
    ensure_installed = {"c", "lua", "markdown", "markdown_inline", "fsharp" }
})

vim.lsp.enable({
    "lua_ls",
    "clangd",
    "fsautocomplete",
    "futhark_lsp",
})

vim.lsp.config("futhark_lsp", {
    root_markers = {'.git', '.fut'},
    on_attach = {
        vim.lsp.semantic_tokens.enable(not vim.lsp.semantic_tokens.is_enabled())
    }
})
