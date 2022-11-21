local opt = vim.opt

opt.shiftwidth = 2
opt.tabstop = 2

opt.expandtab = true
opt.autoindent = true
opt.wrap = false

opt.cursorline = true
opt.number = true

opt.backspace = 'indent,eol,start'
opt.clipboard:append('unnamedplus')

opt.splitright = true
opt.splitbelow = true
opt.showtabline = 2

opt.iskeyword:append('-')

-- Default python environment
vim.g.python3_host_prog = '~\\anaconda3\\envs\\neovim-env\\python.exe'

require('gruvbox').setup({
  transparent_mode = true,
  invert_tabline = true
})
vim.o.background = 'dark'

vim.g.doge_doc_standard_python = 'reST'
