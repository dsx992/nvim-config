local util = require "lspconfig/util"
require("lspconfig").fsautocomplete.setup {
    root_dir = util.root_pattern("*.fsx", '*.sln', '*.fsproj', '.git'),
}
