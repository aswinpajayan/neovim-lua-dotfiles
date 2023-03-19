vim.g.mapleader = " "

vim.keymap.set({ 'i', 'n', 'v', 's', 'o', 't' }, '<M-j>', '"<Down>"', { noremap = true, expr = true })
vim.keymap.set({ 'i', 'n', 'v', 's', 'o', 't' }, '<M-k>', '"<Up>"', { noremap = true, expr = true })
vim.keymap.set({ 'i', 'n', 'v', 's', 'o', 't', 'c' }, '<M-h>', '"<Left>"', { noremap = true, expr = true })
vim.keymap.set({ 'i', 'n', 'v', 's', 'o', 't', 'c' }, '<M-l>', '"<Right>"', { noremap = true, expr = true })
vim.keymap.set({ 'c' }, '<M-j>', '"<Right>"', { noremap = true, expr = true })
vim.keymap.set({ 'c' }, '<M-k>', '"<Left>"', { noremap = true, expr = true })


-- resizing
vim.keymap.set('n', '<C-Up>', ':resize +5<cr>', noremap)
vim.keymap.set('n', '<C-Down>', ':resize -5<cr>', noremap)
vim.keymap.set('n', '<C-Left>', ':vertical resize -5<cr>', noremap)
vim.keymap.set('n', '<C-Right>', ':vertical resize +5<cr>', noremap)



-- switch to nth tab, just use ngt eg. 2gt, 3gt
-- create a new tab
vim.keymap.set('n', '<leader>nt', ':tabnew', noremap)
vim.keymap.set('n', '<leader>nv', ':vsplit', noremap)
vim.keymap.set('n', '<leader>nh', ':split', noremap)

-- terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', noremap)
vim.keymap.set('n', '<leader>tt', ':tabnew | terminal<cr>', noremap)
vim.keymap.set('n', '<leader>tv', ':vsplit | terminal<cr>', noremap)
vim.keymap.set('n', '<leader>tv', ':vsplit | terminal<cr>', noremap)

