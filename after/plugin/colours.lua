function ColourMyPencils(colour)
	colour = "nordfox"
	vim.cmd.colorscheme(colour)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none"} )
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"} )

    airline = "base16_gruvbox_light_soft"
    vim.cmd.AirlineTheme(airline)

end

ColourMyPencils()
