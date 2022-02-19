-- lvim config by Nils Nahooy 20220218

-- general

-- lvim options
lvim.log.level = "warn"
lvim.format_on_save = false -- TODO find out why the auto-formatter add ^M for newlines in lua files (but not in e.g. Python)
lvim.colorscheme = "molokai"

-- vim options
--vim.opt.number = false -- unset numbered lines
--vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.expandtab = true            -- Use spaces instead of tabs
vim.opt.shiftwidth = 4              -- Shift 4 spaces when tab
vim.opt.tabstop = 4                 -- 1 tab == 4 spaces
vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.guifont = "Izayoi Monospaced:h12" -- the font used in graphical neovim applications

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- Additional Plugins
lvim.plugins = {
    { "folke/tokyonight.nvim" },
    { "tiagovla/tokyodark.nvim" },
    { "tomasr/molokai" },
    { "RRethy/vim-illuminate" },
    { "andweeb/presence.nvim" }
}
