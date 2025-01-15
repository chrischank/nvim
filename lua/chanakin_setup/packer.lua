-- This file can be loaded by calling `lua require('plugins')` from your init.vim


-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "EdenEast/nightfox.nvim" -- Packer
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'nvim-treesitter/playground'
  use 'nvim-lua/plenary.nvim'
  use 'ThePrimeagen/harpoon'
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  -- Snippet Collection (Optional)
		  {'rafamadriz/friendly-snippets'},
	  }
  }
  -- Airline
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- Gitlab Duo
  use {
       'git@gitlab.com:gitlab-org/editor-extensions/gitlab.vim.git',
       event = { 'BufReadPre', 'BufNewFile' }, -- Activate when a file is created/opened
       ft = { 'go', 'javascript', 'python', 'ruby' }, -- Activate when a supported filetype is open
       cond = function()
         return vim.env.GITLAB_TOKEN ~= nil and vim.env.GITLAB_TOKEN ~= '' -- Only activate is token is present in environment variable (remove to use interactive workflow)
       end,
       opts = {
         statusline = {
           enabled = true, -- Hook into the builtin statusline to indicate the status of the GitLab Duo Code Suggestions integration
         },
       },
     }

  -- GPT
  use 'MunifTanjim/nui.nvim'
  use ({
    "Bryley/neoai.nvim",
    require = { "MunifTanjim/nui.nvim" },
    cmd = {
        "NeoAI",
        "NeoAIOpen",
        "NeoAIClose",
        "NeoAIToggle",
        "NeoAIContext",
        "NeoAIContextOpen",
        "NeoAIContextClose",
        "NeoAIInject",
        "NeoAIInjectCode",
        "NeoAIInjectContext",
        "NeoAIInjectContextCode",
    },
    config = function()
        require("neoai").setup({
        -- Below are the default options, feel free to override what you would like changed
        ui = {
            output_popup_text = "NeoAI",
            input_popup_text = "Prompt",
            width = 30, -- As percentage eg. 30%
            output_popup_height = 80, -- As percentage eg. 80%
            submit = "<Enter>", -- Key binding to submit the prompt
        },
        models = {
            {
                name = "openai",
                model = "gpt-4o",
                params = {
                    temperature = 0.4,
                    top_p = 0.3
                },
            },
        },
        register_output = {
            ["g"] = function(output)
                return output
            end,
            ["c"] = require("neoai.utils").extract_code_snippets,
        },
        inject = {
            cutoff_width = 75,
        },
        prompts = {
            context_prompt = function(context)
                return "Hey, I'd like to provide some context for future "
                    .. "messages. Here is the code/text that I want to refer "
                    .. "to in our upcoming conversations:\n\n"
                    .. context
            end,
        },
        mappings = {
            ["select_up"] = "<C-k>",
            ["select_down"] = "<C-j>",
        },
        open_ai = {
            api_key = {
                env = "OPENAI_API_KEY",
                value = nil,
                -- `get` is is a function that retrieves an API key, can be used to override the default method.
                -- get = function() ... end

                -- Here is some code for a function that retrieves an API key. You can use it with
                -- the Linux 'pass' application.
                -- get = function()
                --     local key = vim.fn.system("pass show openai/mytestkey")
                --     key = string.gsub(key, "\n", "")
                --     return key
                -- end,
            },
        },
        shortcuts = {
            {
                name = "textify",
                key = "<leader>as",
                desc = "fix text with AI",
                use_context = true,
                prompt = [[
                    Please rewrite the text to make it more readable, clear,
                    concise, and fix any grammatical, punctuation, or spelling
                    errors
                ]],
                modes = { "v" },
                strip_function = nil,
            },
            {
                name = "gitcommit",
                key = "<leader>ag",
                desc = "generate git commit message",
                use_context = false,
                prompt = function()
                    return [[
                        Using the following git diff generate a consise and
                        clear git commit message, with a short title summary
                        that is 75 characters or less:
                    ]] .. vim.fn.system("git diff --cached")
                end,
                modes = { "n" },
                strip_function = nil,
            },
        },
    })
    end,
})

end)
