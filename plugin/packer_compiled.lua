-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/thomas/.cache/nvim/packer_hererocks/2.1.1700008891/share/lua/5.1/?.lua;/home/thomas/.cache/nvim/packer_hererocks/2.1.1700008891/share/lua/5.1/?/init.lua;/home/thomas/.cache/nvim/packer_hererocks/2.1.1700008891/lib/luarocks/rocks-5.1/?.lua;/home/thomas/.cache/nvim/packer_hererocks/2.1.1700008891/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/thomas/.cache/nvim/packer_hererocks/2.1.1700008891/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  autoclose = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/autoclose",
    url = "https://github.com/m4xshen/autoclose.nvim"
  },
  ["ayu-vim-darker"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/ayu-vim-darker",
    url = "https://github.com/k4yt3x/ayu-vim-darker"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  flake8 = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/flake8",
    url = "https://github.com/PyCQA/flake8"
  },
  harpoon = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["modus-themes.nvim"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/modus-themes.nvim",
    url = "https://github.com/miikanissi/modus-themes.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  nightfly = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/nightfly",
    url = "https://github.com/bluz71/vim-nightfly-colors"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  onedarkpro = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/onedarkpro",
    url = "https://github.com/olimorris/onedarkpro.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/papercolor-theme",
    url = "https://github.com/NLKNguyen/papercolor-theme"
  },
  playground = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["pop-punk.vim"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/pop-punk.vim",
    url = "https://github.com/bignimbus/pop-punk.vim"
  },
  ["presence.nvim"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/presence.nvim",
    url = "https://github.com/andweeb/presence.nvim"
  },
  rope = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/rope",
    url = "https://github.com/python-rope/rope"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  spacecamp = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/spacecamp",
    url = "https://github.com/jaredgorski/spacecamp"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  tokyonight = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/tokyonight",
    url = "https://github.com/d0ugherty/tokyonight.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-ballroom"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/vim-ballroom",
    url = "https://github.com/gouch/vim-ballroom"
  },
  ["vim-code-dark"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/vim-code-dark",
    url = "https://github.com/tomasiser/vim-code-dark"
  },
  ["vim-codefmt"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/vim-codefmt",
    url = "https://github.com/google/vim-codefmt"
  },
  ["vim-eldar"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/vim-eldar",
    url = "https://github.com/agude/vim-eldar"
  },
  ["vim-glaive"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/vim-glaive",
    url = "https://github.com/google/vim-glaive"
  },
  ["vim-maktaba"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/vim-maktaba",
    url = "https://github.com/google/vim-maktaba"
  },
  ["vim-vividchalk"] = {
    loaded = true,
    path = "/home/thomas/.local/share/nvim/site/pack/packer/start/vim-vividchalk",
    url = "https://github.com/tpope/vim-vividchalk"
  }
}

time([[Defining packer_plugins]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
