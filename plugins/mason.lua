-- get python venv path
local get_python_path = function()
  local venv_path = os.getenv('VIRTUAL_ENV') or os.getenv('CONDA_PREFIX')
  if venv_path then
    return venv_path .. '/bin/python'
  end
  return nil
end

return {
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      handlers = {
        python = function(source_name)
          local dap = require 'dap'
          dap.adapters.python = {
            type = 'executable',
            command = 'python',
            args = { '-m', 'debugpy.adapter' },
          }
          dap.configurations.python = {
            {
              type = "python",
              request = "launch",
              name = "Fast API",
              module = "uvicorn",
              args = { "main:app" },
              env = { PORT = "5678" },
              jinja = true,
              justMyCode = true,
              pythonPath = get_python_path()
            },
          }
        end,
      }
    },
  },
}
