vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.showmode = false

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.breakindent = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 8

-- Sets the terminal (Powershell 7)
vim.opt.shell = 'pwsh.exe'

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.termguicolors = true

-- Sets indentation settings (2 spaces for HTML; 8 spaces for C)
vim.api.nvim_create_autocmd('FileType', {
  callback = function(args)
    local ft = args.match
    local indent = {
      html = 2,
      c = 8,
    }

    local size = indent[ft] or 4 -- Default to 4 spaces if language not listed
    vim.bo.tabstop = size
    vim.bo.shiftwidth = size
    vim.bo.expandtab = true -- Use spaces instead of tabs
  end,
})
