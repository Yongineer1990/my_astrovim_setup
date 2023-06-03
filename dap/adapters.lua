-- get python venv path
local get_python_path = function()
  local venv_path = os.getenv('VIRTUAL_ENV') or os.getenv('CONDA_PREFIX')
  if venv_path then
    return venv_path .. '/bin/python'
  end
  return nil
end

return {
  dap = {
    adapters = {
      python = {
        type = 'executable',
        command = 'python',
        args = { '-m', 'debugpy.adapter' },
      },
    },
    configurations = {
      python = {
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
    },
  },
}
