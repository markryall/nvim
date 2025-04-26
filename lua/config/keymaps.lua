-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<Leader>op",
  ':let @+ = expand("%")<CR>',
  { silent = true, noremap = true, desc = "copy file path" }
)
vim.keymap.set(
  "n",
  "<Leader>oP",
  ':let @+ = expand("%:p")<CR>',
  { silent = true, noremap = true, desc = "copy full file path" }
)
vim.keymap.set(
  "n",
  "<Leader>ol",
  ':let @+ = expand("%") . ":" . line(".")<CR>',
  { silent = true, noremap = true, desc = "copy file path and line number" }
)
vim.keymap.set(
  "n",
  "<Leader>oL",
  ':let @+ = expand("%:p") . ":" . line(".")<CR>',
  { silent = true, noremap = true, desc = "copy file path and line number" }
)
