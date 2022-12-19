local map = vim.api.nvim_set_keymap
local opts = {noremap=true , silent=true}

--global
--<CR> artinya enter
--<C> artinya control
vim.g.mapleader=' '
map('n','<C-e>',':Neotree<CR>',opts)
map('n','<E>',':Neotree close<CR>',opts)
