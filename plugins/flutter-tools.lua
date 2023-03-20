return {
  'akinsho/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  setup = function()
    astronvim.lazy_load_commands("flutter-tools.nvim", {
      "FlutterRun",
      "FlutterDevices",
      "FlutterEmulators",
      "FlutterReload",
      "FlutterRestart",
      "FlutterQuit",
      "FlutterDetach",
      "FlutterOutlineToggle",
      "FlutterOutlineOpen",
      "FlutterDevTools",
      "FlutterDevToolsActivate",
      "FlutterCopyProfilerUrl",
      "FlutterLspRestart",
      "FlutterSuper",
      "FlutterReanalyze"
    })
  end,
  config = function() require "user.config.flutter-tools" end,
}
