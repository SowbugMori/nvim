local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'andweeb/presence.nvim'
  use 'kien/rainbow_parentheses.vim'
  use 'ellisonleao/gruvbox.nvim' 
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'Yggdroot/indentLine'
  use 'vim-airline/vim-airline'
  use 'nanozuki/tabby.nvim'
  use 'preservim/nerdtree'
  use 'tpope/vim-fugitive'
  use 'kkoomen/vim-doge'
  use 'tpope/vim-surround'
  use 'windwp/nvim-autopairs'
  if packer_bootstrap then
    require('packer').sync()
  end
end)
