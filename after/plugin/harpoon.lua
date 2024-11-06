--local mark = require("harpoon.mark")
--local ui = require("harpoon.ui")
--local cmd_ui = require("harpoon.cmd-ui")
--local term = require("harpoon.term")
--
--vim.keymap.set("n", "<leader>a", mark.add_file)
--vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)
--
--
--vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
--vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
--vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
--vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)
--
--
--vim.keymap.set("n", "<leader>t1", function() term.gotoTerminal(1) end)
--vim.keymap.set("n", "<leader>t2", function() term.gotoTerminal(2) end)
--vim.keymap.set("n", "<leader>t3", function() term.gotoTerminal(4) end)
--
--vim.keymap.set("n", "<leader>te", function() cmd_ui.toggle_quick_menu() end)
--
--
--vim.keymap.set("n", "<leader>tc11", function() term.sendCommand(1,1) end)
--vim.keymap.set("n", "<leader>tc22", function() term.sendCommand(2,2) end)
--vim.keymap.set("n", "<leader>tc33", function() term.sendCommand(3,3) end)
--
--
--require("harpoon").setup = {
--      -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
--    enter_on_sendcmd = true,
--
--    projects = {
--        -- Yes $HOME works
--        ["$HOME/.config/nvim"] = {
--            term = {
--                cmds = {
--                    "git status"
--                }
--            }
--        }
--    }
--}


local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED
vim.g.mapleader=" "
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-n>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-p>", function() harpoon:list():next() end)

local harpoon = require('harpoon')
harpoon:setup({})

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

harpoon:extend({
  UI_CREATE = function(cx)
    vim.keymap.set("n", "<C-v>", function()
      harpoon.ui:select_menu_item({ vsplit = true })
    end, { buffer = cx.bufnr })

    vim.keymap.set("n", "<C-x>", function()
      harpoon.ui:select_menu_item({ split = true })
    end, { buffer = cx.bufnr })

    vim.keymap.set("n", "<C-t>", function()
      harpoon.ui:select_menu_item({ tabedit = true })
    end, { buffer = cx.bufnr })
  end,
})


vim.keymap.set("n", "<leader>h", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })
