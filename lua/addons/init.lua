local M = {}

function M.GetPlugins()
  local plugins = {}
  for plugin, config in pairs(require "addons.plugins") do
    table.insert(plugins, vim.tbl_extend("force", { plugin }, config))
  end

  return plugins
end

return M
