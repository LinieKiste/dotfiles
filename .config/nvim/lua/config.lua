require("plugins")
require("lsp")

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

-- PLUGIN SETTINGS
-- airline
vim.g.airline_theme = 'base16_gruvbox_dark_hard'
vim.g.airline_powerline_fonts = 1
-- coc
vim.cmd [[source ~/.config/nvim/coc.vim]]
-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- NERDTree
vim.keymap.set('n', '<C-f>', ':NERDTreeFocus<CR>')
vim.keymap.set('n', '<C-n>', ':NERDTree<CR>')
vim.keymap.set('n', '<C-t>', ':NERDTreeToggle<CR>')
-- toggleterm
vim.keymap.set('n', '<A-t>', ':ToggleTerm<CR>')
vim.keymap.set('t', '<A-t>', [[<Cmd>:ToggleTerm<CR>]])
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  -- vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts) -- overwrites clearing terminal
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')


vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.mouse = 'a'
vim.opt.foldmethod = 'syntax'
vim.opt.foldlevel = 99
vim.opt.encoding = 'utf-8'
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4

