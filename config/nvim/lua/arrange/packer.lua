
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  print "git clone packer from github..."
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require("packer").startup( {function(use)
  
  -- print "packer startup Begin..."

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- 欢迎界面
  use "goolord/alpha-nvim"

  -- 文件管理树
  use { "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" }


  -- 文件管理树
  --use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", commit = "44b7c8100269161e20d585f24bce322f6dcdf8d2", }


  -- 启动自更新插件
  if packer_bootstrap then
    require('packer').sync()
  end

  -- print "packer startup finish..."

end, 
config = { display = { open_fn = require('packer.util').float, } } } )



