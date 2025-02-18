-- return { -- You can easily change to a different colorscheme.
-- 	-- Change the name of the colorscheme plugin below, and then
-- 	-- change the command in the config to whatever the name of that colorscheme is.
-- 	--
-- 	-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
-- 	"folke/tokyonight.nvim",
-- 	priority = 1000, -- Make sure to load this before all the other start plugins.
-- 	init = function()
-- 		-- Load the colorscheme here.
-- 		-- Like many other themes, this one has different styles, and you could load
-- 		-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
-- 		vim.cmd.colorscheme("tokyonight-night")
--
-- 		-- You can configure highlights by doing something like:
-- 		vim.cmd.hi("Comment gui=none")
-- 	end,
-- }

return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
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
        vim.cmd("colorscheme gruvbox")
    end,
}
