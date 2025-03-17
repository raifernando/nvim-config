return {
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        init = function()
            -- vim.cmd.colorscheme("tokyonight-night")
        end,
    },
    {
        "rebelot/kanagawa.nvim"
    },
    {
        "ellisonleao/gruvbox.nvim",
        config = function()
            require("gruvbox").setup({
                overrides = {
                    -- THIS BLOCK
                    SignColumn = { bg = "#282828" },
                    NvimTreeCutHL = { fg = "#fb4934", bg = "#282828" },
                    NvimTreeCopiedHL = { fg = "#b8bb26", bg = "#282828" },
                    DiagnosticSignError = { fg = "#fb4934", bg = "#282828" },
                    DiagnosticSignWarn = { fg = "#fabd2f", bg = "#282828" },
                    DiagnosticSignHint = { fg = "#8ec07c", bg = "#282828" },
                    DiagnosticSignInfo = { fg = "#d3869b", bg = "#282828" },
                    -- OR THIS BLOCK
                    -- NvimTreeCutHL = { fg="#fb4934", bg="#3c3836" },
                    -- NvimTreeCopiedHL = { fg="#b8bb26", bg="#3c3836" }
                    -- END
                }
            })
            -- vim.cmd("colorscheme gruvbox")
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        init = function()
            vim.cmd.colorscheme("catppuccin-mocha")
        end,
    }
}
