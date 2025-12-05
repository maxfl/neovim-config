-- works with languagetool 5.9 (which has --api flag for xml output)
-- which works with jre-9
-- $ archlinux-java set ...
return {
	"rhysd/vim-grammarous",
	config = function()
		vim.g["grammarous#languagetool_cmd"] = "languagetool"
		vim.g["grammarous#use_vim_spelllang"] = 0
		vim.g["grammarous#default_lang"] = "en-US"
	end,
}
