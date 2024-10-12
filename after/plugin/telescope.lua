local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    local search_term = vim.fn.input("Grep > ")
    if search_term ~= "" then
        builtin.grep_string({ search = search_term, cwd = vim.fn.getcwd() })
vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Telescope live grep' })
    else
        print("No search term provided")
    end
end, { desc = 'Telescope grep string' })

