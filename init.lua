-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- https://chipsalliance.github.io/verible/verilog_lint.html
-- ~/.local/share/nvim/mason/bin/verible-verilog-lint --rules_config ~/.config/nvim/extra/verible/.rules.verible_lint --print_rules_file
require("lspconfig").verible.setup({
    cmd = {
        "verible-verilog-ls",
        "--rules_config",
        "~/.config/nvim/extra/verible/.rules.verible_lint",
    },
})
