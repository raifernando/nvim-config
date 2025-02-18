vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- VSCODE shorcuts

local map     = vim.keymap
local bufopts = { silent = true }
vim.api.nvim_command('set shiftwidth=4') -- default if not Sleuth?

map.set('v', '<Tab>', '>gv', bufopts)
map.set('v', '<S-Tab>', '<gv', bufopts)
map.set('i', '<S-Tab>', '<ESC>v<<ESC>i<right>', bufopts)
map.set('i', '<C-right>', '<C-o>:call jump_word_e()<CR>', bufopts)
map.set('i', '<C-left>', '<C-o>:call jump_word_b()<CR>', bufopts)
map.set('n', '<C-right>', 'e', bufopts) -- https://vi.stackexchange.com/questions/12614/prevent-w-from-jumping-to-next-line#comment21820_12614
map.set('n', '<C-left>', 'b', bufopts)
-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
