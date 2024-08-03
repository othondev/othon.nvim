local M = {}

function M.OpenLastChangeFiles()
  print "open open"
end

function M.OpenNvimConfig()
  require("telescope.builtin").find_files {
    prompt_title = "< NVIM Config >",
    cwd = vim.fn.stdpath "config",
  }
end

return M
