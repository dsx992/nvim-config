return {
    "maxmx03/solarized.nvim",
    name = "solarized",
    lazy = false,
    config = function()
        require("solarized").setup({
            variant = "autumn",
        })
    end
}
