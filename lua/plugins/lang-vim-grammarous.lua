-- works with languagetool 5.9 (which has --api flag for xml output)
-- which works with jre-9
-- $ archlinux-java set ...
return {
	"rhysd/vim-grammarous",
    keys = {
        {"<Leader>sc", "<CMD>GrammarousCheck<CR>", desc="Grammarous: check" },
        {"<Leader>sr", "<CMD>GrammarousReset<CR>", desc="Grammarous: reset" },
    },
	config = function()
		vim.g["grammarous#languagetool_cmd"] = "languagetool"
		vim.g["grammarous#use_vim_spelllang"] = false
		vim.g["grammarous#default_lang"] = "en-US"
        vim.g["grammarous#use_location_list"] = true
        vim.g["grammarous#move_to_first_error"] = false
	end,
}
