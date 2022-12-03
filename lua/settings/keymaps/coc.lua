-- Coc
-- https://github.com/neoclide/coc.nvim#example-lua-configuration

-- ########################################
-- Autocomplete happens with CTRL + y    #
-- ######################################

-- inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

-- local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

-- vim.keymap.set("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)

-- vim.keymap.set("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
