-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<Leader>[p",
  ':let @+ = expand("%")<CR>',
  { silent = true, noremap = true, desc = "copy file path" }
)
vim.keymap.set(
  "n",
  "<Leader>[l",
  ':let @+ = expand("%") . ":" . line(".")<CR>',
  { silent = true, noremap = true, desc = "copy file path and line number" }
)
