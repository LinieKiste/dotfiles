require("plugins")

-- THEME
vim.opt.background = 'dark'
vim.g.gruvbox_material_background = 'hard'
vim.cmd 'colo gruvbox-material'

-- CUSTOM KEY REMAPS
vim.g.mapleader = ','
-- split navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
-- exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- PLUGIN SETTINGS
-- airline
vim.g.airline_theme = 'base16_gruvbox_dark_hard'
vim.g.airline_powerline_fonts = 1
-- coc
vim.cmd [[source ./coc.vim]]
-- NERDTree
vim.keymap.set('n', '<C-f>', ':NERDTreeFocus<CR>')
vim.keymap.set('n', '<C-n>', ':NERDTree<CR>')
vim.keymap.set('n', '<C-t>', ':NERDTreeToggle<CR>')

vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.mouse = 'a'
vim.opt.foldmethod = 'syntax'
vim.opt.encoding = 'utf-8'
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.expandtab = true

