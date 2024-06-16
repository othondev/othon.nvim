local M = {}

function M.load_mappings()
  	vim.api.nvim_set_keymap("n", "<TAB>", ':lua print("oi oi oi")<CR>', { noremap = true, silent = true })
end

return M
