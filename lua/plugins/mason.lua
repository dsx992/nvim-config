return {
    "williamboman/mason.nvim",
    opts = {},

    "williamboman/mason-lspconfig.nvim",
    name = "mason-lspconfig",
    opts = {
        ensure_installed = { "lua_ls", "csharp_ls"},
    },

    "neovim/nvim-lspconfig",
}
