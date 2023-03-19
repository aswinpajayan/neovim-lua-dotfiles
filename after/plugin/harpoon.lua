local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local cmd_ui = require("harpoon.cmd-ui")
local term = require("harpoon.term")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)


vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)


vim.keymap.set("n", "<leader>t1", function() term.gotoTerminal(1) end)
vim.keymap.set("n", "<leader>t2", function() term.gotoTerminal(2) end)
vim.keymap.set("n", "<leader>t3", function() term.gotoTerminal(4) end)

vim.keymap.set("n", "<leader>te", function() cmd_ui.toggle_quick_menu() end)


vim.keymap.set("n", "<leader>tc11", function() term.sendCommand(1,1) end)
vim.keymap.set("n", "<leader>tc22", function() term.sendCommand(2,2) end)
vim.keymap.set("n", "<leader>tc33", function() term.sendCommand(3,3) end)


require("harpoon").setup = {
      -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
    enter_on_sendcmd = true,

    projects = {
        -- Yes $HOME works
        ["$HOME/.config/nvim"] = {
            term = {
                cmds = {
                    "git status"
                }
            }
        }
    }
}
