function ColorMyPencils(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)
   -- vim.cmd('highlight Normal  guibg=none ctermbg=none')
    
    --vim.api.nvim_set_hl(0, "Normal", { bg = "black" } )
    --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "black" } )

end


ColorMyPencils()
