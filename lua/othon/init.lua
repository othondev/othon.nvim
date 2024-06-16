local M = {}

function M.load_mappings()
  	vim.api.nvim_set_keymap("n", "<TAB>", ':lua print("oi oi oi")<CR>', { noremap = true, silent = true })
  print('all mappings loaded')
end

vim.schedule(function ()
  M.load_mappings()
end)

return M

