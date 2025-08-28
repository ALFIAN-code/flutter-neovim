return {
  {
    "akinsho/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
    -- config = true,

    opts = {
      -- Konfigurasi untuk Dev Log (output 'flutter run')
      devlog = {
        enabled = true,
        -- Perintahkan untuk membuka di tab baru, bukan split
        open_cmd = "tabedit", -- Opsi lain bisa "edit" (di buffer saat ini)
      },
      -- Anda juga bisa menonaktifkan widget guides jika dirasa mengganggu
      widget_guides = {
        enabled = false,
      },
    },
  },
}
