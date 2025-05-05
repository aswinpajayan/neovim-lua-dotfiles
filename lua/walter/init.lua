vim.o.encoding = 'utf-8'
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.mouse = 'a'
vim.o.nu = true
vim.o.rnu = true
vim.o.cursorline = true
vim.o.cursorlineopt = 'line'
vim.o.scl = 'yes:1' --signs column
vim.o.scrolloff = 5 --keep five lines in context always
vim.o.wrap = false
vim.o.splitright = true
vim.o.splitbelow = true

vim.o.termguicolors = true
--vim.cmd.colorscheme "catppuccin"

vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]
