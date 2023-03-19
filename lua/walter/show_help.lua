local popup = require('plenary.popup')
local function open_readme_buffer(file_path)
    local contents = {}
    for line in io.lines(file_path) do
        table.insert(contents, line)
    end

    local bufnr = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, contents)

    local width = math.min(vim.o.columns, 85)
    local height = math.min(vim.o.lines, #contents + 2)

    local border = {
        "-",
        "║",
        "-",
        "║",
        "╔",
        "╗",
        "╝",
        "╚",
    }

    local borderchars =  { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }

    local popup_opts = {
        title = "Cheat Sheet",
        borderchars = borderchars,
        highlight = "cheatsheet",
        minwidth = width,
        minheight = height,
    }

    local buf_opts = {
        modifiable = false,
        filetype = markdown,
    }

    local win = popup.create(bufnr, popup_opts)

    vim.api.nvim_buf_set_option(bufnr, 'modifiable', false)
    vim.api.nvim_buf_set_option(bufnr, 'filetype', 'none')
    vim.api.nvim_set_current_buf(bufnr)
    vim.api.nvim_buf_set_keymap(
        bufnr,
        "n",
        "q",
        "<Cmd>close<CR>",
        { silent = true }
    )
    vim.api.nvim_buf_set_keymap(
        bufnr,
        "n",
        "<Esc>",
        "<Cmd>close<CR>",
        { silent = true }
    )
end



local function lua_open_readme()
    local file_path = os.getenv('HOME') .. '/.config/nvim/keymaphelp.md'
    open_readme_buffer(file_path)
end

vim.keymap.set('n', '<leader>r', function() lua_open_readme() end)


