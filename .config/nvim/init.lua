if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

require("config.lazy")

vim.api.nvim_set_keymap("i", "<Tab>", "<C-t>", { noremap = true })
