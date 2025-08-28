-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local keymap = vim.keymap.set

-- ... (keymap lain yang mungkin sudah ada)

-- ==========================================
-- Flutter Keymaps (VERSI YANG SUDAH DIPERBAIKI)
-- ==========================================
keymap("n", "<leader>flr", "<cmd>FlutterRun<CR>", { desc = "Flutter: Run App" })
keymap("n", "<leader>flR", "<cmd>FlutterRestart<CR>", { desc = "Flutter: Hot Restart" })
keymap("n", "<leader>flh", "<cmd>FlutterReload<CR>", { desc = "Flutter: Hot Reload" })
keymap("n", "<leader>flq", "<cmd>FlutterQuit<CR>", { desc = "Flutter: Quit App" })
-- Baris di bawah ini sudah diperbaiki (tidak ada 'n' tambahan)
keymap("n", "<leader>fld", "<cmd>FlutterDevices<CR>", { desc = "Flutter: Select Device" })
keymap("n", "<leader>fle", "<cmd>FlutterEmulators<CR>", { desc = "Flutter: Select Emulator" })
-- keymap("n", "<leader>flp", "<cmd>Flutter pub get<CR>", { desc = "Flutter: Pub Get" })
keymap("n", "<leader>fld", "<cmd>FlutterDevTools", { desc = "Flutter: start dev tools server" })
keymap("n", "<leader>flo", "<cmd>FlutterOutlineToggle<CR>", { desc = "Flutter: Toggle Outline" })
keymap("n", "<leader>flt", "<cmd>Telescope flutter commands<CR>", { desc = "Flutter: Telescope Commands" })
keymap("n", "<A-Enter>", vim.lsp.buf.code_action, { desc = "Quick Fix (Wrap, Import, etc.)" })
