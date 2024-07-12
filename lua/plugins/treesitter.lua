return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = vim.fn.argc(-1) == 0, --load treesitter early when opening a file form the cmdline
    opts = {
        highlight = { enable = true },
        "lua",
        "python",
        "c_sharp",
        "fsharp",
        "c",
        "bash",
    }
}
