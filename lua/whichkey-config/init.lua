local wk = require("which-key")
local mappings = {
  q={":q<cr>","Quit"},
  Q={":wq<cr>","Save & Quit"},
  e={":NvimTreeToggle<cr>", "NvimTreeToggle"},
  w={":w<cr>","Save"},
  x={":bdelete<cr>","Close"},
  E={":e ~/.config/nvim/init.lua<cr>","Edit Config"},
  p={":e ~/.config/nvim/lua/plugins/init.lua<cr>","Add Plugins"},
}
local opts={prefix='<leader>'}
wk.register(mappings,opts)
