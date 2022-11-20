vim.g.mapleader = ' '

local keymap = vim.keymap

keymap.set('n','<leader>sv','<C-w>v') -- vertical split
keymap.set('n','<leader>sh','<C-w>s') -- horizontal split 
keymap.set('n','<leader>se','<C-w>=') -- make splits equal
keymap.set('n','<leader>sx',':close<CR>') -- close current split

keymap.set('n','<leader>to',':tabnew<CR>') -- new tab
keymap.set('n','<leader>tx',':tabclose<CR>') -- close current tab
keymap.set('n','<leader>tn',':tabn<CR>') -- next tab
keymap.set('n','<leader>tp',':tabp<CR>') -- prev tab

keymap.set('n','<leader>e',':NERDTreeToggle<CR>') -- open tree

keymap.set('n','<C-J>','<C-W><C-J>') -- move left window
keymap.set('n','<C-K>','<C-W><C-K>') -- move up window
keymap.set('n','<C-L>','<C-W><C-L>') -- move down window
keymap.set('n','<C-H>','<C-W><C-H>') -- move left window

local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keymap.set("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
