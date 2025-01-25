vim.opt.guicursor = ""
vim.opt.cursorline = true

vim.opt.nu = true
vim.wo.number = true

-- Create autocommands for switching line number modes
vim.api.nvim_create_autocmd('InsertEnter', {
  callback = function()
    vim.wo.relativenumber = false
    vim.wo.number = true
  end
})

vim.api.nvim_create_autocmd('InsertLeave', {
  callback = function()
    vim.wo.relativenumber = true
    vim.wo.number = true
  end
})

vim.opt.cursorlineopt = 'number'
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = 'White', bold = true })

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
