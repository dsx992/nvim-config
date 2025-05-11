return {
    "williamboman/mason.nvim",

    "williamboman/mason-lspconfig.nvim",
    name = "mason-lspconfig",
    opts = {
        ensure_installed = { "lua_ls", "csharp_ls", "clangd"},
    },

    "neovim/nvim-lspconfig",
}
