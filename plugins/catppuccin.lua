return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = {
    flavour = 'frappe', -- latte, frappe, macchiato, mocha
    dim_inactive = { enabled = true, percentage = 0.25 },
    integrations = {
      nvimtree = false,
      aerial = true,
      dap = { enabled = true, enable_ui = true },
      mason = true,
      neotree = true,
      notify = true,
      sandwich = true,
      semantic_tokens = true,
      symbols_outline = true,
      telescope = true,
      which_key = true,
    },
  },
}
