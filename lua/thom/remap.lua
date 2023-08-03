-- Set the leader key to <Space>
vim.g.mapleader = " "

-- Map the leader key + "pv" to the "Explore" command
vim.keymap.set("n", "<leader>pv", ":Explore<CR>", { noremap = true })
