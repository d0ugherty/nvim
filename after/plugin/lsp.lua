local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'clangd',
    'pylsp',
    'rust_analyzer'
})

-- Configure Python LSP ('pylsp')
lsp.configure('pylsp', {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
			enabled = true,
			ignore = {"E*"}
			-- Ignore formatting warnings
        },
        flake8 = {
			enabled = true,
			ignore = {"E*"}
			-- Ignore formatting warnings
        },
        rope = {
		 enabled = true;
        }
      },
    },
  }
  }
)

-- CMP (Autocompletion) setup
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-d>'] = cmp.mapping.confirm({ select = true }),
    ["<C-space>"] = cmp.mapping.complete(),
})

-- LSP preferences
lsp.set_preferences({
    sign_icons = { }
})

-- Setting up nvim-cmp for LSP
lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

-- LSP on_attach function
lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    -- Corrected key mappings for various LSP functionalities
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vnn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
