# Dokumentasi LazyVim Konfigurasi

## Pengenalan

Konfigurasi LazyVim ini adalah setup Neovim yang dioptimalkan untuk pengembangan Flutter/Dart dengan berbagai plugin untuk meningkatkan produktivitas. Konfigurasi ini menggunakan LazyVim sebagai base dan menambahkan beberapa plugin khusus.

## Cara Install

### Prerequisites
- Neovim 0.9.0 atau lebih baru
- Git
- Node.js (untuk beberapa plugin)
- Flutter SDK (untuk pengembangan Flutter)

### Langkah Instalasi

1. **Clone atau copy konfigurasi ini** ke direktori konfigurasi Neovim Anda:
   ```bash
   cp -r /path/to/this/config ~/.config/nvim
   ```

2. **Install LazyVim dan plugin**:
   - Buka Neovim
   - Lazy akan otomatis menginstall dirinya sendiri dan semua plugin yang diperlukan
   - Jalankan `:Lazy` untuk membuka Lazy UI dan pastikan semua plugin terinstall

3. **Install LSP servers**:
   - Jalankan `:Mason` untuk membuka Mason UI
   - Install server yang diperlukan:
     - `dartls` untuk Dart/Flutter
     - `lua_ls` untuk Lua
     - `jsonls` untuk JSON

4. **Verifikasi instalasi**:
   - Jalankan `:checkhealth` untuk memastikan semua komponen berfungsi dengan baik

## Keybindings

### Keybindings Dasar LazyVim
LazyVim menyediakan berbagai keybinding default. Berikut adalah beberapa yang penting:

#### Navigasi dan Editing
- `<leader>ff` - Find files (Telescope)
- `<leader>fg` - Live grep (Telescope)
- `<leader>fb` - Buffers (Telescope)
- `<leader>fh` - Help tags (Telescope)
- `<leader>e` - File explorer (Neo-tree)
- `<leader>w` - Save file
- `<leader>q` - Quit

#### LSP (Language Server Protocol)
- `gd` - Go to definition
- `gr` - Go to references
- `gi` - Go to implementation
- `K` - Hover documentation
- `<leader>ca` - Code actions
- `<leader>cr` - Rename symbol
- `<leader>cd` - Diagnostic float

#### Window Management
- `<C-h/j/k/l>` - Navigate windows
- `<leader>sv` - Split vertical
- `<leader>sh` - Split horizontal
- `<leader>se` - Equalize splits

### Keybindings Flutter Khusus
Konfigurasi ini menyediakan keybinding khusus untuk pengembangan Flutter:

- `<leader>flr` - Flutter: Run App
- `<leader>flR` - Flutter: Hot Restart
- `<leader>flh` - Flutter: Hot Reload
- `<leader>flq` - Flutter: Quit App
- `<leader>fld` - Flutter: Select Device
- `<leader>fle` - Flutter: Select Emulator
- `<leader>flo` - Flutter: Toggle Outline
- `<leader>flt` - Flutter: Telescope Commands
- `<A-Enter>` - Quick Fix (Wrap, Import, etc.)

### Keybindings Completion (nvim-cmp)
- `<C-Space>` - Trigger completion
- `<C-n>` - Next item
- `<C-p>` - Previous item
- `<CR>` - Confirm selection
- `<C-y>` - Confirm selection (alternative)
- `<C-b>` - Scroll docs up
- `<C-f>` - Scroll docs down
- `<Tab>` - Next snippet placeholder / AI accept

## Plugins yang Digunakan

### Plugin Utama
- **LazyVim** - Base configuration
- **flutter-tools.nvim** - Flutter development tools
- **nvim-cmp** - Completion engine
- **mason.nvim** - LSP server manager
- **telescope.nvim** - Fuzzy finder
- **neo-tree** - File explorer

### Plugin Tambahan
- **github/copilot.vim** - GitHub Copilot integration
- **okuuva/auto-save.nvim** - Auto save files
- **rmagatti/auto-session** - Session management
- **f-person/git-blame.nvim** - Git blame information

### Plugin Extras (dari lazyvim.json)
- **lazyvim.plugins.extras.ai.copilot** - Copilot integration
- **lazyvim.plugins.extras.ai.copilot-chat** - Copilot chat
- **lazyvim.plugins.extras.lang.json** - JSON language support
- **lazyvim.plugins.extras.lang.markdown** - Markdown language support

## Konfigurasi Khusus

### Auto Save
Plugin auto-save akan menyimpan file secara otomatis dengan konfigurasi:
- Trigger: `BufLeave`, `FocusLost`, `InsertLeave`, `TextChanged`
- Delay: 1000ms
- Pesan: "AutoSave: saved at HH:MM:SS"

### Flutter Tools
Konfigurasi khusus untuk Flutter development:
- Dev log terbuka di tab baru
- Widget guides dinonaktifkan
- Outline dan dev tools tersedia

### Git Blame
Menampilkan informasi git blame dengan format waktu relatif.

### LSP Configuration
- Dart LSP server terkonfigurasi
- Mason mengelola instalasi LSP servers
- Auto-install LSP servers diaktifkan

## Tips Penggunaan

1. **Update plugins**: Jalankan `:Lazy update` secara berkala
2. **Check health**: Gunakan `:checkhealth` untuk troubleshooting
3. **Mason**: Gunakan `:Mason` untuk mengelola LSP servers
4. **Flutter development**: Pastikan Flutter SDK terinstall dan `flutter doctor` passes
5. **Session management**: Auto-session akan menyimpan dan restore session secara otomatis

## Troubleshooting

### Masalah Umum
1. **Plugin tidak terinstall**: Jalankan `:Lazy sync`
2. **LSP tidak berfungsi**: Pastikan LSP server terinstall via `:Mason`
3. **Flutter commands tidak ditemukan**: Pastikan Flutter SDK dalam PATH
4. **Keybindings tidak berfungsi**: Check konflik dengan plugin lain

### Debug Mode
Aktifkan debug untuk plugin tertentu dengan mengubah `debug = true` di konfigurasi plugin.

## Kontribusi
Untuk mengubah konfigurasi:
1. Edit file di `lua/config/` untuk konfigurasi umum
2. Edit file di `lua/plugins/` untuk konfigurasi plugin
3. Jalankan `:Lazy reload` setelah perubahan

## Lisensi
Konfigurasi ini menggunakan lisensi yang sama dengan LazyVim.
