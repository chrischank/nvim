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
local package_path_str = "/Users/christopherchan/.cache/nvim/packer_hererocks/2.1.1731601260/share/lua/5.1/?.lua;/Users/christopherchan/.cache/nvim/packer_hererocks/2.1.1731601260/share/lua/5.1/?/init.lua;/Users/christopherchan/.cache/nvim/packer_hererocks/2.1.1731601260/lib/luarocks/rocks-5.1/?.lua;/Users/christopherchan/.cache/nvim/packer_hererocks/2.1.1731601260/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/christopherchan/.cache/nvim/packer_hererocks/2.1.1731601260/lib/lua/5.1/?.so"
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
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitlab.vim.git"] = {
    cond = { "\27LJ\2\nU\0\0\1\0\4\0\0146\0\0\0009\0\1\0009\0\2\0\n\0\0\0X\0\5€6\0\0\0009\0\1\0009\0\2\0\a\0\3\0X\0\2€+\0\1\0X\1\1€+\0\2\0L\0\2\0\5\17GITLAB_TOKEN\benv\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/opt/gitlab.vim.git",
    url = "git@gitlab.com:gitlab-org/editor-extensions/gitlab.vim"
  },
  harpoon = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neoai.nvim"] = {
    commands = { "NeoAI", "NeoAIOpen", "NeoAIClose", "NeoAIToggle", "NeoAIContext", "NeoAIContextOpen", "NeoAIContextClose", "NeoAIInject", "NeoAIInjectCode", "NeoAIInjectContext", "NeoAIInjectContextCode" },
    config = { "\27LJ\2\n\v\0\1\1\0\0\0\1L\0\2\0«\1\0\1\5\0\3\0\6'\1\0\0'\2\1\0'\3\2\0\18\4\0\0&\1\4\1L\1\2\0(to in our upcoming conversations:\n\n:messages. Here is the code/text that I want to refer 6Hey, I'd like to provide some context for future ­\2\0\0\4\0\5\0\b'\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0B\1\2\2&\0\1\0L\0\2\0\22git diff --cached\vsystem\afn\bvimé\1                        Using the following git diff generate a consise and\n                        clear git commit message, with a short title summary\n                        that is 75 characters or less:\n                    ö\b\1\0\a\0%\00006\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0024\3\3\0005\4\6\0005\5\a\0=\5\b\4>\4\1\3=\3\t\0025\3\v\0003\4\n\0=\4\f\0036\4\0\0'\6\r\0B\4\2\0029\4\14\4=\4\15\3=\3\16\0025\3\17\0=\3\18\0025\3\20\0003\4\19\0=\4\21\3=\3\22\0025\3\23\0=\3\24\0025\3\26\0005\4\25\0=\4\27\3=\3\28\0024\3\3\0005\4\29\0005\5\30\0=\5\31\4>\4\1\0035\4 \0003\5!\0=\5\"\0045\5#\0=\5\31\4>\4\2\3=\3$\2B\0\2\1K\0\1\0\14shortcuts\1\2\0\0\6n\vprompt\0\1\0\a\6`\0\nmodes\0\tdesc generate git commit message\vprompt\0\16use_context\1\tname\14gitcommit\bkey\15<leader>ag\nmodes\1\2\0\0\6v\1\0\a\6`\0\nmodes\0\tdesc\21fix text with AI\vpromptÌ\1                    Please rewrite the text to make it more readable, clear,\n                    concise, and fix any grammatical, punctuation, or spelling\n                    errors\n                \16use_context\2\tname\ftextify\bkey\15<leader>as\fopen_ai\fapi_key\1\0\1\fapi_key\0\1\0\2\nvalue\0\benv\19OPENAI_API_KEY\rmappings\1\0\2\14select_up\n<C-k>\16select_down\n<C-j>\fprompts\19context_prompt\1\0\1\19context_prompt\0\0\vinject\1\0\1\17cutoff_width\3K\20register_output\6c\26extract_code_snippets\16neoai.utils\6g\1\0\2\6c\0\6g\0\0\vmodels\vparams\1\0\2\16temperature\4š³æÌ\t™³æþ\3\ntop_p\4³æÌ™\3³æÌþ\3\1\0\3\nmodel\vgpt-4o\tname\vopenai\vparams\0\aui\1\0\b\aui\0\vinject\0\vmodels\0\rmappings\0\20register_output\0\fopen_ai\0\14shortcuts\0\fprompts\0\1\0\5\nwidth\3\30\21input_popup_text\vPrompt\22output_popup_text\nNeoAI\vsubmit\f<Enter>\24output_popup_height\3P\nsetup\nneoai\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/opt/neoai.nvim",
    url = "https://github.com/Bryley/neoai.nvim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/christopherchan/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'NeoAIOpen', function(cmdargs)
          require('packer.load')({'neoai.nvim'}, { cmd = 'NeoAIOpen', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'neoai.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NeoAIOpen ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NeoAIClose', function(cmdargs)
          require('packer.load')({'neoai.nvim'}, { cmd = 'NeoAIClose', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'neoai.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NeoAIClose ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NeoAIToggle', function(cmdargs)
          require('packer.load')({'neoai.nvim'}, { cmd = 'NeoAIToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'neoai.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NeoAIToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NeoAIContext', function(cmdargs)
          require('packer.load')({'neoai.nvim'}, { cmd = 'NeoAIContext', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'neoai.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NeoAIContext ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NeoAIContextOpen', function(cmdargs)
          require('packer.load')({'neoai.nvim'}, { cmd = 'NeoAIContextOpen', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'neoai.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NeoAIContextOpen ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NeoAIContextClose', function(cmdargs)
          require('packer.load')({'neoai.nvim'}, { cmd = 'NeoAIContextClose', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'neoai.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NeoAIContextClose ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NeoAIInject', function(cmdargs)
          require('packer.load')({'neoai.nvim'}, { cmd = 'NeoAIInject', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'neoai.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NeoAIInject ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NeoAIInjectCode', function(cmdargs)
          require('packer.load')({'neoai.nvim'}, { cmd = 'NeoAIInjectCode', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'neoai.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NeoAIInjectCode ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NeoAIInjectContext', function(cmdargs)
          require('packer.load')({'neoai.nvim'}, { cmd = 'NeoAIInjectContext', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'neoai.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NeoAIInjectContext ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NeoAIInjectContextCode', function(cmdargs)
          require('packer.load')({'neoai.nvim'}, { cmd = 'NeoAIInjectContextCode', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'neoai.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NeoAIInjectContextCode ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NeoAI', function(cmdargs)
          require('packer.load')({'neoai.nvim'}, { cmd = 'NeoAI', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'neoai.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NeoAI ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType ruby ++once lua require("packer.load")({'gitlab.vim.git'}, { ft = "ruby" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'gitlab.vim.git'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'gitlab.vim.git'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'gitlab.vim.git'}, { ft = "python" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'gitlab.vim.git'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'gitlab.vim.git'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

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
